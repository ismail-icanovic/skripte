#!/bin/bash

# Get a list of all AWS regions
regions=$(aws ec2 describe-regions --query 'Regions[].RegionName' --output text)

# Iterate over each region
for region in $regions; do
    echo "Region: $region"
    
    # List load balancers in the current region
    lb_names=$(aws elbv2 describe-load-balancers --region $region --query 'LoadBalancers[].LoadBalancerName' --output text)
    
    # Print the load balancer names
    echo "Load Balancers:"
    echo "$lb_names"
    
    echo "-------------------------"
done
