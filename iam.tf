data "aws_caller_identity" "current" {}

resource "aws_iam_policy" "firefly_s3_specific_read_permission" {
  name        = "S3SpecificReadPermission"
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
        "Resource" : "arn:aws:kms:*:${data.aws_caller_identity.current.account_id}:key/*"
      },
      {
        "Action" : [
          "s3:GetObjectVersion"
        ],
        "Effect" : "Allow",
        "Resource" : [
          "arn:aws:s3:::*/*.tfstate"
        ]
      },
      {
        "Action" : [
          "s3:GetObject"
        ],
        "Effect" : "Allow",
        "Resource" : [
          "arn:aws:s3:::*/*.tfstate",
          "arn:aws:s3:::elasticbeanstalk*/*",
          "arn:aws:s3:::aws-emr-resources*/*",
          "arn:aws:s3:::*/${data.aws_caller_identity.current.account_id}*ConfigSnapshot*.json.gz"
        ]
      },
    ]
  })
}

resource "aws_iam_role" "firefly_cross_account_access_role" {
  name               = "firefly-caa-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "AWS" : "arn:aws:iam::${local.organizationID}:root"
        },
        "Effect" : "Allow"
      }
    ]
  })
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/SecurityAudit",
    "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess",
    aws_iam_policy.firefly_readonly_policy_part1.arn,
    aws_iam_policy.firefly_readonly_policy_part2.arn,
    aws_iam_policy.firefly_readonly_policy_part3.arn,
    aws_iam_policy.firefly_readonly_policy_part4.arn,
    aws_iam_policy.firefly_readonly_policy_part5.arn,
    aws_iam_policy.firefly_readonly_policy_part6.arn,
    aws_iam_policy.firefly_readonly_policy_part7.arn,
    aws_iam_policy.firefly_s3_specific_read_permission.arn
  ]

}
