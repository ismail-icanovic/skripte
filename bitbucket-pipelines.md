- Deployment sa bitbucket pipeline to S3 i codedeploy, Java app build i test

```
image: maven:3.8.5-openjdk-17
pipelines:
  default:
    - step:
        name: Tests
        script:
          - export TESTCONTAINERS_RYUK_DISABLED=true
          - mvn clean verify -P IT
        services:
          - docker
    - step:
        name: Build
        script:
          - mvn clean package -Dmaven.test.skip=true
        artifacts:
          - propass-monolith-api/target/propass-monolith-api-0.0.1-SNAPSHOT.jar
    - step:
        name: Deploy to S3
        image: atlassian/default-image:2
        script:
          # Install AWS CLI
          - apt-get update && apt-get install -y awscli
          - zip -r archive.zip *
        # Configure AWS CLI
          - aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
          - aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
          - aws configure set default.region $AWS_DEFAULT_REGION
          - aws s3 cp archive.zip s3://$S3_BUCKET
    - step:
        name: Deploy to CodeDeploy
        image: atlassian/default-image:2
        script:
          # Install AWS CLI
          - apt-get update && apt-get install -y awscli
        # Configure AWS CLI
          - aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
          - aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
          - aws configure set default.region $AWS_DEFAULT_REGION
          - aws deploy create-deployment --application-name test-deploy-mp --deployment-config-name CodeDeployDefault.OneAtATime --deployment-group-name test-dg-mp --description "My demo deployment" --file-exists-behavior OVERWRITE --s3-location bucket=s3-test-mp,bundleType=zip,key=archive.zip
```
