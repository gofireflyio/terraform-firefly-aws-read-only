resource "aws_iam_policy" "firefly_readonly_policy_part8" {
  name        = "FireflyReadonlyPolicy_part8"
  path        = "/"
  description = "Read only permission for the cloud configuration Part8"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "glue:SearchTables",
          "glue:GetCrawler",
          "glue:GetDataCatalogEncryptionSettings",
          "glue:BatchGetDevEndpoints",
          "glue:GetTableVersions",
          "glue:GetPartitions",
          "glue:GetSchema",
          "glue:GetDevEndpoint",
          "glue:GetSecurityConfiguration",
          "glue:GetResourcePolicy",
          "glue:GetTrigger",
          "glue:GetUserDefinedFunction",
          "glue:GetResourcePolicies",
          "glue:GetUserDefinedFunctions",
          "glue:GetClassifier",
          "glue:GetSchemaByDefinition",
          "glue:ListWorkflows",
          "glue:GetJobs",
          "glue:GetTables",
          "glue:GetSchemaVersionsDiff",
          "glue:GetTriggers",
          "glue:GetPartition",
          "glue:GetDevEndpoints",
          "glue:BatchGetWorkflows",
          "glue:ListDevEndpoints",
          "glue:BatchGetJobs",
          "glue:ListRegistries",
          "glue:GetJob",
          "glue:GetWorkflow",
          "glue:ListSchemaVersions",
          "glue:GetConnections",
          "glue:GetCrawlers",
          "glue:GetClassifiers",
          "glue:BatchGetBlueprints",
          "glue:GetTableVersion",
          "glue:GetConnection",
          "glue:ListMLTransforms",
          "glue:ListSchemas",
          "glue:GetMLTransforms",
          "glue:GetRegistry",
          "glue:BatchGetPartition",
          "glue:GetSecurityConfigurations",
          "glue:ListTriggers",
          "glue:GetDatabases",
          "glue:ListJobs",
          "glue:GetTags",
          "glue:GetTable",
          "glue:GetDatabase",
          "glue:BatchGetCrawlers",
          "glue:GetSchemaVersion",
          "glue:BatchGetTriggers",
          "glue:BatchGetCustomEntityTypes",
          "glue:ListCrawlers",
          "glue:GetCrawlerMetrics"
        ],
        "Effect" : "Allow",
        "Resource" : "*"
      }
    ]
  })
}
