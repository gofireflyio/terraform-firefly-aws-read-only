resource "random_string" "external_id" {
  length           = 12
  special          = false
}

resource "aws_iam_policy" "firefly_readonly_policy" {
  name        = "FireflyReadonlyPolicy"
  path        = "/"
  description = "Read only permission for the cloud configuration"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "apigateway:GET",
            "cloudwatch:ListDashboards",
            "cloudwatch:GetDashboard",
            "codebuild:BatchGetProjects",
            "ec2:SearchTransitGatewayRoutes",
            "eks:ListNodegroups",
            "eks:ListFargateProfiles",
            "eks:ListTagsForResource",
            "eks:DescribeNodegroup",
            "eks:DescribeFargateProfile",
            "states:DescribeStateMachine",
            "states:ListStateMachines",
            "states:ListTagsForResource",
            "sns:ListSubscriptionsByTopic",
            "sns:ListTopics",
            "sns:ListSubscriptions",
            "ses:GetIdentityMailFromDomainAttributes",
            "ses:GetIdentityVerificationAttributes",
            "sns:GetSubscriptionAttributes",
            "ses:GetIdentityDkimAttributes",
            "ses:ListIdentities",
            "elasticfilesystem:DescribeLifecycleConfiguration",
            "ecr-public:ListTagsForResource",
            "ecr:DescribeRepositories",
            "appconfig:ListApplications",
            "appconfig:ListTagsForResource",
            "eks:ListIdentityProviderConfigs",
            "eks:DescribeIdentityProviderConfig",
            "eks:ListAddons",
            "eks:DescribeAddon",
            "elasticfilesystem:DescribeAccessPoints",
            "elasticfilesystem:ListTagsForResource",
            "s3:ListBucket",
            "lambda:GetAlias",
            "lambda:GetEventSourceMapping",
            "lambda:GetFunction",
            "lambda:GetFunctionConfiguration",
            "lambda:GetPolicy",
            "lambda:ListAliases",
            "lambda:ListEventSourceMappings",
            "lambda:ListFunctions",
            "lambda:ListVersionsByFunction",
            "kms:GetKeyRotationStatus",
            "ssm:GetParameter",
            "ssm:GetParameterHistory",
            "ssm:GetParameters",
            "ssm:GetDocument",
            "ssm:GetParametersByPath",
            "cognito-identity:DescribeIdentity",
            "cognito-identity:DescribeIdentityPool",
            "cognito-identity:ListIdentities",
            "cognito-identity:ListIdentityPools",
            "appconfig:ListApplications",
            "appconfig:GetApplication",
            "appconfig:ListEnvironments",
            "appconfig:GetEnvironment",
            "appconfig:ListConfigurationProfiles",
            "appconfig:GetConfigurationProfile",
            "appconfig:ListDeploymentStrategies",
            "appconfig:GetDeploymentStrategy",
            "appconfig:GetConfiguration",
            "appconfig:ListDeployments",
            "appconfig:GetDeployment",
            "cognito-idp:GetUserPoolMfaConfig",
            "cognito-idp:GetGroup",
            "cognito-idp:GetCSVHeader"
          ],
          "Effect": "Allow",
          "Resource": "*"
        },

        {
        "Action": [
          "s3:GetObject",
        ],
        "Effect": "Allow",
        "Resource": "arn:aws:s3:::*/*.tfstate"
      }
    ]
  })
}

resource "aws_iam_role" "firefly_cross_account_access_role" {
  name = "firefly-caa-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "AWS" : "arn:aws:iam::${local.organizationID}:root"
        },
        "Effect" : "Allow",
        "Condition": {
          "StringEquals":{
            "sts:ExternalId": random_string.external_id.result
          }
        }
      }
    ]
  })
  managed_policy_arns = ["arn:aws:iam::aws:policy/SecurityAudit",
                         "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess",
                         aws_iam_policy.firefly_readonly_policy.arn]
}