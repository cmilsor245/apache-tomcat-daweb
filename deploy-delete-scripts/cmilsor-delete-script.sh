#!/bin/bash

apt update -y && apt upgrade -y && apt auto-remove -y

apt install awscli -y

STACK_NAME=tomcat

aws cloudformation delete-stack \
--stack-name $STACK_NAME \
# --preserve-stack-properties

clear
echo "stack $STACK_NAME has been deleted successfully"