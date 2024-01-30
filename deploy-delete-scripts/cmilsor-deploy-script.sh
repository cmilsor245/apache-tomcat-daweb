#!/bin/bash

apt update -y && apt upgrade -y && apt auto-remove -y

apt install awscli -y

mkdir -p ~/.aws

cat <<EOL > ~/.aws/credentials
[default]
aws_access_key_id=
aws_secret_access_key=
aws_session_token=
EOL

cat <<EOL > ~/.aws/config
[default]
region = us-east-1
output = json
EOL

# export AWS_ACCESS_KEY_ID=
# export AWS_SECRET_ACCESS_KEY=
# export AWS_SESSION_TOKEN=
# export AWS_DEFAULT_REGION=us-east-1

STACK_NAME=tomcat
EC2_INSTANCE_TYPE=t2.medium

aws cloudformation deploy \
--template-file apache-tomcat-daweb/stack-yaml/main.yml \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--no-fail-on-empty-changeset \
--parameter-override InstanceType=$EC2_INSTANCE_TYPE

if [ $? -eq 0 ]; then
  aws cloudformation list-exports \
  --profile default \
  --query "Exports[?Name=='InstanceEndpoint'].Value"
fi