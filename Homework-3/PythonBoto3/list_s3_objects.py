import boto3
from botocore.exceptions import ClientError

def list_s3_objects(bucket_name):
    s3 = boto3.client('s3')
    try:
        response = s3.list_objects_v2(Bucket=bucket_name)
        print(f"Files in S3 bucket '{bucket_name}':")
        for obj in response.get('Contents', []):
            print(f" - {obj['Key']}")
    except ClientError as e:
        print(f"Error listing S3 objects: {e}")

list_s3_objects('cli-s3-bucket-is698')

