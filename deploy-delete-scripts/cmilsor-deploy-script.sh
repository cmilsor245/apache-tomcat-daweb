#!/bin/bash

apt update -y && apt upgrade -y && apt auto-remove -y

apt install awscli -y

mkdir -p ~/.aws

cat <<EOL > ~/.aws/credentials
[default]
aws_access_key_id=ASIAU3RBYFCARJP2ROBV
aws_secret_access_key=mIEDms+aWSTRgyxJC6khccgMlYLuryti8TXfKWnp
aws_session_token=FwoGZXIvYXdzEGMaDCRY3UXYuzG4s1YMHyLCAfPmiU0q2Sf75iBCEJv4qXhrZQ3jgh7hsdq177rQhjKusstEVwu7VLVzBgXqxXR4G9ps9E+vsIn3wuGVZtVHygBh4v0r8Oo2mTnRL1gAM05LT1WzffPP6RMTx3v6uZjHjo6kHDNJnYXJSo/C4f54wx6dPXAXRCSX9LxD6XJRd6K7qvBElRIbXBypXldBOa/h153ZGBsp2rfY0s/OlWmXTkr9YTAwIU1Whgb+wT/ZDn6KE5KgndpT7Idu4ZhQtjGljxwmKIPt5K0GMi1A7oAlUIg2UToa9P4tihgoZv9X5N/F6jrZGfyhJ8AqEDnmV9hobfSRGyuqOQo=
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