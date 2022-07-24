# Firefly AWS ReadOnly Integration
# ![Firefly Logo](firefly.gif)

## Module contents

Firefly terraform module to integrate your aws environment to firefly.

### Prerequisites

- AWS CLI installed (version )
- The aws role running it should have permissions creation of roles in iam.

```shell script
curl --help
```

### Installation

```hcl-terraform
provider "aws" {
    region     =  "us-east-1"
}


module "firefly-read-only" {
  source              = "gofireflyio/terraform-firefly-aws-read-only"
  firefly_access_key  = "YOUR_ACCESS_KEY"
  fierfly_secret_key  = "YOUR_SECRET_KEY"
  role_external_id    = "YOUR_EXTERNAL_ID"
  is_prod               = false/true
}
```
