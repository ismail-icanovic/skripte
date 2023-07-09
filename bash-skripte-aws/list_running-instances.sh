#!/bin/bash

# Retrieve the instance details using AWS CLI
instance_info=$(aws ec2 describe-instances --filters Name=instance-state-name,Values=running)

# Extract the instance name and region from the output
instance_names=$(echo "$instance_info" | jq -r '.Reservations[].Instances[].Tags[] | select(.Key=="Name") | .Value')
instance_regions=$(echo "$instance_info" | jq -r '.Reservations[].Instances[].Placement.AvailabilityZone')

# Print the instance name and region
for i in $(seq 1 $(echo "$instance_info" | jq -r '.Reservations[].Instances[].Tags[] | select(.Key=="Name") | .Value' | wc -l)); do
  name=$(echo "$instance_names" | sed -n ${i}p)
  region=$(echo "$instance_regions" | sed -n ${i}p)
  echo "Instance Name: $name"
  echo "Region: $region"
  echo "----------------------"
done
