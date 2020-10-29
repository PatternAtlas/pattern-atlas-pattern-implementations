"ElasticBeanstalkApp$random$": {
    "Type": "AWS::ElasticBeanstalk::Application",
    "Properties": {
    }
},
"ElasticBeanstalkAppVersion$random$": {
    "Type": "AWS::ElasticBeanstalk::ApplicationVersion",
    "Properties": {
        "ApplicationName": {
            "Ref": "ElasticBeanstalkApp$random$"
        },
        "SourceBundle": {
            "S3Bucket": "TODO: insert Amazon S3 bucket",
            "S3Key": "TODO: insert Amazon S3 key"
        }
    }
},
"ElasticBeanstalkConfigTemplate$random$": {
    "Type": "AWS::ElasticBeanstalk::ConfigurationTemplate",
    "Properties": {
        "ApplicationName": {
            "Ref": "ElasticBeanstalkApp$random$"
        },
        "EnvironmentId": {
            "Ref": "ElasticBeanstalkEnvironment$random$"
        }
    }
},
"ElasticBeanstalkEnvironment$random$": {
    "Type": "AWS::ElasticBeanstalk::Environment",
    "Properties": {
        "ApplicationName": {
            "Ref": "ElasticBeanstalkApp$random$"
        }
    }
}
