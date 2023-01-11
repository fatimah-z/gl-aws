#!/bin/bash

# Define the stack name and template file
STACK_NAME="s3bucketstack"
TEMPLATE_FILE="C:/Users/Fatima/Downloads/dataBucket.yml"

# Define the parameters for the stack
PARAMETERS="ParameterKey=BucketName,ParameterValue=s3-data-bucket-1122"

# Create the stack
aws cloudformation create-stack \
    --stack-name "$STACK_NAME" \
    --template-body "file://$TEMPLATE_FILE" \
    --parameters "$PARAMETERS"

#upload sql files to the s3 bucket
aws s3 cp C:\Users\Fatima\Downloads\SampleDatabase\sample-data.sql s3://s3-data-bucket-1122