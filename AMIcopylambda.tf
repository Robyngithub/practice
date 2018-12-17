import json
import boto3

def lambda_handler(ec2,image):
    
    ec2 = boto3.resource('ec2')
    image = ec2.Image('ami-06fa9f1c4785836c0')
    response = image.modify_attribute(
        LaunchPermission={
            'Add': [
                {
                    'UserId': '923268164749'
                }
            ]
        } 
    )
  