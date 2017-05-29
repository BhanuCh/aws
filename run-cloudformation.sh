#comment added
aws cloudformation create-stack --stack-name vpn2 --template-url https://s3-us-west-2.amazonaws.com/my-bucket-bhanu-1234/ec2-cloudformation-eip.json --parameters ParameterKey=KeyName,ParameterValue=myaws-key-1234567 ParameterKey=Subnet,ParameterValue=subnet-5677ab1f
