# Firefly AWS ReadOnly Integration
# ![Firefly Logo](firefly.gif)

## Module contents

Let's start with creating a read-only assume-role.
Ensure you are logged into your AWS account with permission to create CloudFormation and IAM resources.
Launch the CloudFormation template into your account:

## Configuration

### Prerequisites

This module requires the cURL library to be installed on your machine.
To check if you have cURL installed, type the following command in your terminal:

```shell script
curl --help
```

### Installation

```hcl-terraform
module "firefly-read-only" {
  source              = "infralight/terraform-firefly-aws-read-only"
  firefly_access_key  = "YOUR_ACCESS_KEY"
  fierfly_secret_key  = "YOUR_SECRET_KEY"
  role_external_id    = "YOUR_EXTERNAL_ID"
}
```
