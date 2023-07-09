import boto3

default_period = '5m'
default_evaluation_periods = '1'
default_statistic = 'Average'
cw_namespace = 'Coesia'
alarm_cpu_high_default_threshold = '75'
alarm_cpu_high_anomaly_detection_default_threshold = '1'
alarm_memory_high_default_threshold = '75'
alarm_disk_space_percent_free_threshold = "20"
alarm_separator = '-'
alarm_identifier = 'AutoAlarm' # ovdje zamjenit

def list_windows_cloudwatch_metrics():
    session = boto3.Session(profile_name='default', region_name='us-east-1')
    cloudwatch_client = session.client('cloudwatch')


    metric_name = 'Storage Used'
    dimensions = [
        {'Name': 'InstanceId', 'Value': 'i-0b718992b3de9f6a1'},
        {'Name': 'fstype', 'Value': 'xfs'}
    ]

    try:
        response = cloudwatch_client.list_metrics(
            Namespace=cw_namespace,
            MetricName=metric_name,
            Dimensions=dimensions
        )
        metrics = response['Metrics']

        paths = []  # List to store paths
        devices = []  # List to store devices
        
        for metric in metrics:
            for dimension in metric['Dimensions']:
                if dimension['Name'] == 'path':
                    paths.append(dimension['Value'])
                elif dimension['Name'] == 'device':
                    devices.append(dimension['Value'])

            
        print("Paths:")
        for path in paths:
            print(path)

        print("\nDevices:")
        for device in devices:
            print(device)


        append_dimensions = 'InstanceId'
        append_dimensions = [dimension.strip() for dimension in append_dimensions.split(',')]
        

        default_alarms = {
            'AWS/EC2': [
                {
                    'Key': alarm_separator.join(
                        [alarm_identifier, 'AWS/EC2', 'CPUUtilization', 'GreaterThanOrEqualToThreshold', default_period,
                         default_evaluation_periods, default_statistic, 'Created_by_CloudWatchAutoAlarms']),
                    'Value': alarm_cpu_high_default_threshold
                },
            ],
            cw_namespace: {
                'Amazon Linux': [
                                    {
                                        'Key': alarm_separator.join(
                                            [alarm_identifier, cw_namespace, 'Storage Used', 'device', device_name,
                                             'fstype', 'xfs', 'path',
                                             instance_path, 'GreaterThanOrEqualToThreshold', default_period,
                                             default_evaluation_periods, default_statistic,
                                             'Created_by_CloudWatchAutoAlarms']),
                                        'Value': str(alarm_disk_space_percent_free_threshold)
                                    } for instance_path, device_name in zip(paths, devices)
                                ] + [
                                    {
                                        'Key': alarm_separator.join(
                                            [alarm_identifier, cw_namespace, 'Used Memory',
                                             'GreaterThanOrEqualToThreshold', default_period,
                                             default_evaluation_periods, default_statistic,
                                             'Created_by_CloudWatchAutoAlarms']),
                                        'Value': str(alarm_memory_high_default_threshold)
                                    }
                                ]
            }
        }


        windows_list = default_alarms[cw_namespace]['Amazon Linux']

        # Iterating over each dictionary element in the list and printing its contents
        for element in windows_list:
            print(element)
            #print new line
            print("\n")


        return windows_list
            
    except boto3.exceptions.Boto3Error as e:
        print(f"Error listing CloudWatch metrics: {e}")

list_windows_cloudwatch_metrics()




