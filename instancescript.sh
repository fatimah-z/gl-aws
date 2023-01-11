#!/bin/bash

# Define the stack name and template file
STACK_NAME="ec2Instancestack"
TEMPLATE_FILE="C:/Users/Fatima/Downloads/Instance.yml"

# Define the parameters for the stack
PARAMETERS="ParameterKey=KeyPairName,ParameterValue=ec2-1"

# Create the stack
aws cloudformation create-stack \
    --stack-name "$STACK_NAME" \
    --template-body "file://$TEMPLATE_FILE" \
    --parameters "$PARAMETERS"

