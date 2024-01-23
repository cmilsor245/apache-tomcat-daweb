#!/bin/bash

apt update -y && apt upgrade -y && apt auto-remove -y

apt install awscli -y

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_DEFAULT_REGION=us-east-1

STACK_NAME=tomcat

aws cloudformation delete-stack \
--stack-name $STACK_NAME \
# --preserve-stack-properties