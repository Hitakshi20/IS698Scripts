import boto3
ec2_client = boto3.client('ec2', region_name='us-east-1')
instance_id = 'i-06148ef9d9eb7572e'

print(f"Stopping instance: {instance_id}")
ec2_client.stop_instances(InstanceIds=[instance_id])
waiter = ec2_client.get_waiter('instance_stopped')
waiter.wait(InstanceIds=[instance_id])
print(f"Instance {instance_id} stopped.")

print(f"Terminating instance: {instance_id}")
ec2_client.terminate_instances(InstanceIds=[instance_id])
waiter = ec2_client.get_waiter('instance_terminated')
waiter.wait(InstanceIds=[instance_id])
print(f"Instance {instance_id} terminated.")

