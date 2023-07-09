#!/bin/bash
aws ec2 create-tags --resources i-06c5a1752d5a1a4c9 --tags Key=Monitoring,Value=True && aws ec2 create-tags --resources i-0b718992b3de9f6a1 --tags Key=Monitoring,Value=True
aws cloudwatch describe-alarms --query 'MetricAlarms[*].AlarmName' --output text | \
  while read -r alarm_name; do \
    aws cloudwatch delete-alarms --alarm-names "$alarm_name"; \
  done
cd /Users/ismailicanovic/Documents/posao/coesia/coeasia-monitoring/sam-lambda/SamLambdaFiles
zip -r ../SamLambdaFiles.zip .
aws lambda update-function-code --function-name CloudWatchAutoAlarms --zip-file fileb://SamLambdaFiles.zip --region us-east-1
#aws events put-events --entries file://events.json
aws ec2 create-tags --resources i-06c5a1752d5a1a4c9 --tags Key=Monitoring,Value=True && aws ec2 create-tags --resources i-0b718992b3de9f6a1 --tags Key=Monitoring,Value=True
