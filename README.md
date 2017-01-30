# aws
# Intro

create account @ aws.amazon.com


create credentials

configure credentials

*aws configure

*aws ec2 create-key-pair --key-name my-aws-key --query 'KeyMaterial' --output text

store the output(private key) my-aws-key.pem

aws ec2 create-security-group --group-name my-security-group --description "my-security-group" --vpc-id $vpcId --query 'GroupId' --output text
aws ec2 authorize-security-group-ingress --group-id $securityGroupId --protocol tcp --port 22 --cidr 0.0.0.0/0
