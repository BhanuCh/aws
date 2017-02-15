import boto3


awskeypairname="myaws-key-1234567"
amiid="ami-f173cc91"

region="us-west-2"
sg_id="sg10"

sg_id_list = []
sg_id_list.append(sg_id)
ec2 = boto3.client('ec2')
instances = ec2.run_instances(ImageId=amiid,MinCount=1,MaxCount=1,KeyName=awskeypairname,SecurityGroups=sg_id_list,InstanceType='t2.nano')


print instances
