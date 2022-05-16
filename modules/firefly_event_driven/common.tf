resource "aws_iam_policy" "event_driven_firefly_policy" {
  name        = "${var.region}-firefly-event-driven-policy"
  path        = "/"
  description = "${var.env} firefly event driven policy"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
              "ssm:PutParameter",
              "ssm:GetParameter"
            ],
            "Effect": "Allow",
            "Resource": aws_ssm_parameter.FireflyToken.arn
        },
        {
            "Action": [
                 "kms:Decrypt"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
})
}

resource "aws_iam_role_policy_attachment" "event_driven_firefly_policy_attachment" {
  role      = data.aws_iam_role.event_driven_role.name
  policy_arn = aws_iam_policy.event_driven_firefly_policy.arn
}

resource "aws_iam_role_policy_attachment" "event_driven_firefly_lambda_basic_policy_attachment" {
  role      = data.aws_iam_role.event_driven_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy_attachment" "event_driven_firefly_lambda_vpc_policy_attachment" {
  role      = data.aws_iam_role.event_driven_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}