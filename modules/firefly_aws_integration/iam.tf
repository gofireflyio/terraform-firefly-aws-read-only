data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

resource "aws_iam_policy" "firefly_readonly_policy_deny_list" {
  name        = "${var.name}-FireflyReadonlyPolicyDenyList"
  path        = "/"
  description = "Read only permission for the cloud configuration - Deny List"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "acm-pca:DescribeCertificateAuthorityAuditReport",
            "athena:BatchGetQueryExecution",
            "athena:GetQueryExecution",
            "athena:GetQueryResults",
            "athena:GetQueryResultsStream",
            "athena:ListQueryExecutions",
            "auditmanager:*",
            "aws-portal:*",
            "braket:Search*",
            "cassandra:*",
            "chime:GetApp*",
            "chime:ListChannel*",
            "chime:ListChannels*",
            "chime:DescribeChannel*",
            "chime:ListApp*",
            "chime:DescribeApp*",
            "chime:GetUser*",
            "chime:ListMeeting*",
            "chime:ListMeetings*",
            "chime:GetMeeting",
            "chime:GetChannel*",
            "chime:ListGroups",
            "chime:GetPhoneNumber",
            "chime:GetSipMedia*",
            "chime:GetAccount*",
            "chime:ListDirectories",
            "chime:ListDomains",
            "chime:GetMessagingSessionEndpoint",
            "chime:ListUsers",
            "chime:GetProxySession",
            "chime:GetGlobalSettings",
            "chime:GetEventsConfiguration",
            "chime:ListAccountUsageReportData",
            "chime:ListProxySessions",
            "chime:ListAccounts",
            "chime:ListCDRBucket",
            "chime:ListCallingRegions",
            "chime:ListSipRules",
            "chime:ListAttendeeTags",
            "chime:ListSupportedPhoneNumberCountries",
            "chime:GetCDRBucket",
            "chime:GetAttendee",
            "chime:ListPhoneNumbers",
            "chime:RetrieveDataExports",
            "chime:ListAttendees",
            "chime:ListApiKeys",
            "chime:GetMediaCapturePipeline",
            "chime:SearchAvailablePhoneNumbers",
            "chime:GetTelephonyLimits",
            "chime:ListBots",
            "chime:GetRoom",
            "chime:ListMediaCapturePipelines",
            "chime:ListPhoneNumberOrders",
            "chime:GetSipRule",
            "chime:GetPhoneNumberOrder",
            "chime:GetBot",
            "chime:ValidateAccountResource",
            "chime:ListRooms",
            "chime:GetDomain",
            "chime:ListDelegates",
            "chime:GetRetentionSettings",
            "chime:ListSipMediaApplications",
            "chime:GetPhoneNumberSettings",
            "chime:ListRoomMemberships",
            "codestar:Verify*",
            "cognito-sync:QueryRecords",
            "datapipeline:EvaluateExpression",
            "datapipeline:QueryObjects",
            "datapipeline:Validate*",
            "dax:BatchGetItem",
            "dax:GetItem",
            "dax:Query",
            "dax:Scan",
            "detective:SearchGraph",
            "dms:Test*",
            "ds:Check*",
            "ds:Verify*",
            "ds:DescribeCertificate",
            "ds:ListCertificates",
            "elastictranscoder:ListJobsByPipeline",
            "elastictranscoder:ListJobsByStatus",
            "kinesisvideo:GetClip",
            "kinesisvideo:GetDASHStreamingSessionURL",
            "kinesisvideo:GetHLSStreamingSessionURL",
            "lakeformation:GetTableObjects",
            "lakeformation:GetWorkUnitResults",
            "lakeformation:GetWorkUnits",
            "license-manager:GetAccessToken",
            "license-manager:GetGrant",
            "license-manager:ListTokens",
            "lightsail:GetContainerAPIMetadata",
            "lightsail:GetContainerImages",
            "lightsail:GetContainerLog",
            "lightsail:GetDiskSnapshot",
            "lightsail:GetDiskSnapshots",
            "lightsail:GetDistributionLatestCacheReset",
            "lightsail:GetDistributionMetricData",
            "lightsail:GetExportSnapshotRecords",
            "lightsail:GetInstanceAccessDetails",
            "lightsail:GetLoadBalancerMetricData",
            "lightsail:GetRelationalDatabaseEvents",
            "lightsail:GetRelationalDatabaseLogEvents",
            "lightsail:GetRelationalDatabaseMetricData",
            "lightsail:GetRelationalDatabaseSnapshot",
            "lightsail:GetRelationalDatabaseSnapshots",
            "logs:DescribeExportTasks",
            "logs:DescribeQueries",
            "logs:GetLogEvents",
            "logs:GetLogRecord",
            "logs:GetQueryResults",
            "macie2:GetFindings",
            "macie2:GetMacieSession",
            "macie2:GetUsageStatistics",
            "macie2:GetUsageTotals",
            "macie2:ListFindings",
            "polly:SynthesizeSpeech",
            "rekognition:CompareFaces",
            "wafv2:CheckCapacity",
            "workdocs:CheckAlias",
            "workmail:Search*",
            "cognito-identity:GetCredentialsForIdentity",
            "cognito-identity:GetIdentityPoolRoles",
            "cognito-identity:GetOpenId*",
            "cognito-idp:GetSigningCertificate",
            "connect:GetFederationToken",
            "secretsmanager:GetRandomPassword",
            "secretsmanager:GetSecretValue"
          ],
          "Effect": "Deny",
          "Resource": "*"
        },
    ]
  })
}

locals {
  s3_objects         = [
    "arn:aws:s3:::*/*tfstate",
    "arn:aws:s3:::elasticbeanstalk*/*",
    "arn:aws:s3:::aws-emr-resources*/*"
  ]
  config_service_objects = ["arn:aws:s3:::*/${data.aws_caller_identity.current.account_id}*ConfigSnapshot*.json.gz"]
  s3_objects_to_allow = var.use_config_service ?  concat(local.s3_objects, local.config_service_objects) : local.s3_objects
}

resource "aws_iam_policy" "firefly_s3_specific_read_permission" {
  name        = "${var.name}-S3SpecificReadPermission"
  path        = "/"
  description = "Read only permission for the Specific S3 Buckets"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "kms:Decrypt"
        ],
        "Effect" : "Allow",
        "Resource" : "arn:aws:kms:*:${local.account_id}:key/*"
      },
      {
        "Action" : [
          "s3:GetObject"
        ],
        "Effect" : "Deny",
        "NotResource" : local.s3_objects_to_allow
      },
    ]
  })
}

resource "aws_iam_role" "firefly_cross_account_access_role" {
  name = var.role_name
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
          "StringEquals": {
            "sts:ExternalId": var.role_external_id
          }
        }
      }
    ]
  })
  managed_policy_arns = ["arn:aws:iam::aws:policy/SecurityAudit",
                         "arn:aws:iam::aws:policy/ReadOnlyAccess",
                         aws_iam_policy.firefly_readonly_policy_deny_list.arn,
                         aws_iam_policy.firefly_s3_specific_read_permission.arn]

}