#!/bin/bash

aws cloudformation delete-stack \
--stack-name tomcat \

# --preserve-stack-properties