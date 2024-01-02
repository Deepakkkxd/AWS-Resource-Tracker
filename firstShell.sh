#!/bin/bash

# Author : Deepak Kumar Ranjan
# Date : April 29th 2021
#
# This script is to track AWS resource usage
#
# Things we will list
# AWS EC2 Instances
# AWS S3 Buckets
# IAM Users
#
# Please note that this will give the output in JSON format and we will redirect only some specified information to the result file
#
#
# AWS S3 Bucket
echo "Printing list of S3 buckets"
aws s3 ls > s3-buckets

# AWS EC2 Instances
echo "Printing list of EC2 Instances(Instance ID)"
aws ec2 descirbe-instances | jq '.Reservations[].Instances[].InstanceId' > ec2-instance

#AWS IAM Users
echo "Printing list IAM users"
aws iam list-users > iam-users
