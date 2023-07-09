value=$(<~/Documents/posao/coesia/agent_conf/cloudwatch-config.json)
aws ssm put-parameter \
    --name "AmazonCloudWatch-windows-ismail" \
    --value "$value" \
    --type "String" \
    --tier Standard \
    --description "AmazonCloudWatch-Agent Windows Configuration" \
    --region us-east-1 \
    --overwrite

aws ssm send-command \
    --document-name "AmazonCloudWatch-ManageAgent" \
    --document-version "\$LATEST" \
    --targets '[{"Key":"InstanceIds","Values":["i-06c5a1752d5a1a4c9"]}]' \
    --parameters '{"action":["configure"],"mode":["ec2"],"optionalConfigurationSource":["ssm"],"optionalConfigurationLocation":["AmazonCloudWatch-windows-ismail"],"optionalRestart":["yes"]}' \
    --timeout-seconds 600 \
    --max-concurrency "50" \
    --max-errors "0" \
    --region us-east-1


value=$(<~/Documents/posao/coesia/agent_conf/Coesia-Linux-new.json)
aws ssm put-parameter \
    --name "AmazonCloudWatch-Linux-ismail" \
    --value "$value" \
    --type "String" \
    --tier Standard \
    --description "AmazonCloudWatch-Agent Windows Configuration" \
    --region us-east-1 \
    --overwrite

aws ssm send-command \
    --document-name "AmazonCloudWatch-ManageAgent" \
    --document-version "\$LATEST" \
    --targets '[{"Key":"InstanceIds","Values":["i-0b718992b3d9f6a1"]}]' \
    --parameters '{"action":["configure"],"mode":["ec2"],"optionalConfigurationSource":["ssm"],"optionalConfigurationLocation":["AmazonCloudWatch-Linux-ismail"],"optionalRestart":["yes"]}' \
    --timeout-seconds 600 \
    --max-concurrency "50" \
    --max-errors "0" \
    --region us-east-1
