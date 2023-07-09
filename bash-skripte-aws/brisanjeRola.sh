#!/bin/bash

# Get a list of all roles
roles=$(aws iam list-roles --query 'Roles[?contains(RoleName, `exam`) || contains(RoleName, `Exam`)].[RoleName]' --output text)

# Iterate over each role and delete it
for role in $roles
do
  echo "Deleting role: $role"
  profilestodelete=$(aws iam list-instance-profiles-for-role --role-name $role --query 'InstanceProfiles[].InstanceProfileName' --output text)
  for profile in $profilestodelete
  do
      echo "Deleting profile: $profile"
      aws iam remove-role-from-instance-profile --instance-profile-name $profile --role-name $role 
  done

  policystodelete=$(aws iam list-attached-role-policies --role-name $role --query 'AttachedPolicies[].PolicyArn' --output text)

  for policy in $policystodelete
  do    
        echo "Deleting policy: $policy"
        aws iam detach-role-policy --role-name $role --policy-arn $policy
  done 
  aws iam delete-role --role-name $role
done
