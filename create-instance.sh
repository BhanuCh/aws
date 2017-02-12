#!/bin/bash

awskeypairname="myaws-key-1234567"
amiid="ami-f173cc91"

region="us-west-2"

aws ec2 create-key-pair --region $region --key-name $awskeypairname --query "KeyMaterial" --output text >> $awskeypairname.pem

sgid=`aws ec2 create-security-group --group-name "sg10" --description "allow port 22"|jq '.GroupId'`

temp="${sgid%\"}"
temp="${temp#\"}"
aws ec2 authorize-security-group-ingress --group-id $temp --protocol tcp --port 22 --cidr "0.0.0.0/0"

publicip=`aws ec2 run-instances --image-id $amiid --count 1 --instance-type t2.micro --key-name $awskeypairname --security-group-ids $temp | jq '.Reservations[1].Instances[0].PublicIpAddress'`

echo $publicip
