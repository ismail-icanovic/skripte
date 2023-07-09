#!/bin/bash

# Retrieve the NAT gateway details using AWS CLI
nat_gateway_info=$(aws ec2 describe-nat-gateways --filter Name="state",Values="available")

# Extract the NAT gateway ID and region from the output
nat_gateway_ids=$(echo "$nat_gateway_info" | jq -r '.NatGateways[].NatGatewayId')
nat_gateway_regions=$(echo "$nat_gateway_info" | jq -r '.NatGateways[].VpcId' | xargs -I{} aws ec2 describe-vpcs --vpc-ids {} --query 'Vpcs[].Region' --output text)

# Print the NAT gateway ID and region
for i in $(seq 1 $(echo "$nat_gateway_info" | jq -r '.NatGateways[].NatGatewayId' | wc -l)); do
  nat_gateway_id=$(echo "$nat_gateway_ids" | sed -n ${i}p)
  nat_gateway_region=$(echo "$nat_gateway_regions" | sed -n ${i}p)
  echo "NAT Gateway ID: $nat_gateway_id"
  echo "Region: $nat_gateway_region"
  echo "----------------------"
done
