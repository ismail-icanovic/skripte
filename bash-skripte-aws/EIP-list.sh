#!/bin/bash

# Retrieve the list of AWS regions
regions=$(aws ec2 describe-regions --query "Regions[].RegionName" --output text)
echo "----------------------"
# Iterate through each region
for region in $regions; do

  # Retrieve the EIP details for the current region
  eip_info=$(aws ec2 describe-addresses --region $region)

  # Check if there are any EIPs for the region
  eip_count=$(echo "$eip_info" | jq '.Addresses | length')
  if [[ $eip_count -eq 0 ]]; then
    continue
  fi
  
  echo "Region: $region"
  echo "----------------------"

  # Extract the EIPs from the output
  eips=$(echo "$eip_info" | jq -r '.Addresses[].PublicIp')

  # Print the EIPs
  for eip in $eips; do
    echo "EIP: $eip"
  done

  echo "----------------------"
done
