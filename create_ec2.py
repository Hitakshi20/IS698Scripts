import boto3
ec2 = boto3.resource('ec2', region_name='us-east-1')
instance = ec2.create_instances(
    ImageId='ami-0c02fb55956c7d316',  # Amazon Linux 2 AMI (Free Tier Eligible)
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro',
    KeyName='Is698lab2',  # Ensure you have created this key pair
    TagSpecifications=[
        {
            'ResourceType': 'instance',
            'Tags': [
                {'Key': 'Name', 'Value': 'MyPythonEC2Instance'}
            ]
        }
    ]
)
print(f'Created instance with ID: {instance[0].id}')
