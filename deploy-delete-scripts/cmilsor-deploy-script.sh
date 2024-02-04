#!/bin/bash

apt update -y && apt upgrade -y && apt auto-remove -y

apt install awscli -y

mkdir -p ~/.aws

# paste your credentials
cat <<EOL > ~/.aws/credentials
[default]
aws_access_key_id = 
aws_secret_access_key = 
aws_session_token = 
EOL

cat <<EOL > ~/.aws/config
[default]
region = us-east-1
output = json
EOL

STACK_NAME=tomcat
EC2_INSTANCE_TYPE=t2.medium

aws cloudformation deploy \
--template-file apache-tomcat-daweb/stack-yaml/main.yml \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--no-fail-on-empty-changeset \
--parameter-override InstanceType=$EC2_INSTANCE_TYPE

if [ $? -eq 0 ]; then
  INSTANCE_ENDPOINT=$(aws cloudformation describe-stacks \
    --stack-name $STACK_NAME \
    --query "Stacks[0].Outputs[?OutputKey=='InstanceEndpoint'].OutputValue" \
    --output text)

  if [ -n "$INSTANCE_ENDPOINT" ]; then
    echo "instance endpoint: $INSTANCE_ENDPOINT"
    echo "holamundo app url: $INSTANCE_ENDPOINT/holamundo/hola"
  else
    echo "instance endpoint not found"
  fi
fi