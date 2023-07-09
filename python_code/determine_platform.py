import boto3

def determine_platform(imageid):
    print('Determining platform of image {}'.format(imageid))
    try:
        print('Image ID:')
        session = boto3.Session(profile_name='default', region_name='us-east-1')
        boto3_client = session.client('ec2')
        # does instance have appropriate alarm tag?
        image_info = boto3_client.describe_images(
            ImageIds=[
                imageid
            ]

        )
        # can only be one instance when called by CloudWatch Events
        if 'Images' in image_info and len(image_info['Images']) > 0:
            platform = image_info['Images'][0]['PlatformDetails']
            #logger.debug('Platform details of image: {}'.format(platform_details))
            if not platform and 'Linux/UNIX' in platform_details:
                if 'ubuntu' in image_info['Images'][0]['Name'].lower():
                    platform = 'Ubuntu'
                elif 'Description' in image_info['Images'][0] and 'ubuntu' in image_info['Images'][0][
                    'Description'].lower():
                    platform = 'Ubuntu'
                else:
                    # an assumption is made here that it is Amazon Linux.
                    # note that it could still be an Ubuntu EC2 instance if the AMI is an Ubuntu image
                    # but the Name and Description does not contain 'ubuntu'
                    platform = 'Amazon Linux'
            print('Platform: {}'.format(platform))
            return platform
        else:
            return None

    except Exception as e:
        # If any other exceptions which we didn't expect are raised
        # then fail and log the exception message.
        #logger.error('Failure describing image {}: {}'.format(imageid, e))
        raise

determine_platform('ami-0d86c69530d0a048e')
