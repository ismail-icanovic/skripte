#!/bin/bash
cd /Users/ismailicanovic/Documents/posao/coesia/coeasia-monitoring/sam-lambda/
rm -rf SamLambdaFiles.zip
cd /Users/ismailicanovic/Documents/posao/coesia/coeasia-monitoring/sam-lambda/SamLambdaFiles
zip -r ../SamLambdaFiles.zip .
cd /Users/ismailicanovic/Documents/posao/coesia/coeasia-monitoring/sam-lambda/
sam build
sam deploy --region us-east-1
