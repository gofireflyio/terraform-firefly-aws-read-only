module "firefly_aws_integration" {
  source = "./modules/firefly_aws_integration"
  firefly_secret_key = var.firefly_secret_key
  firefly_access_key = var.firefly_access_key
  name = var.name
  firefly_endpoint = var.firefly_endpoint
  event_driven = var.is_event_driven
  providers          = {
    aws = aws.us_east_1
  }
}

provider "aws" {
  alias      = "us_east_1"
  region     = "us-east-1"
}
provider "aws" {
  alias      = "us_west_2"
  region     = "us-west-2"
}
provider "aws" {
  alias      = "us_east_2"
  region     = "us-east-2"
}
provider "aws" {
  alias      = "us_west_1"
  region     = "us-west-1"
}
provider "aws" {
  alias      = "ap_northeast_3"
  region     = "ap-northeast-3"
}
provider "aws" {
  alias      = "ap_northeast_2"
  region     = "ap-northeast-2"
}
provider "aws" {
  alias      = "ap_southeast_1"
  region     = "ap-southeast-1"
}
provider "aws" {
  alias      = "ap_southeast_2"
  region     = "ap-southeast-2"
}
provider "aws" {
  alias      = "ap_northeast_1"
  region     = "ap_northeast_1"
}

module "event_driven_us_east_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-1"
  role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
  }
  depends_on = [
    module.firefly_aws_integration
  ]
   providers      = {
    aws = aws.us_east_1
  }
}
module "event_driven_us_west_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-west-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-west-2"
  role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
  }
  depends_on = [
    module.firefly_aws_integration,
  ]
   providers      = {
    aws = aws.us_west_2
  }
}
module "event_driven_us_east_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-east-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-2"
  role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
  }
  depends_on = [
    module.firefly_aws_integration,
  ]
   providers      = {
    aws = aws.us_east_2
  }
}
module "event_driven_us_west_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-west-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-west-1"
  role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
  }
  depends_on = [
    module.firefly_aws_integration,
  ]
   providers      = {
    aws = aws.us_west_1
  }
}
module "event_driven_ap_northeast_3" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-northeast-3") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-3"
  role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
  }
  depends_on = [
    module.firefly_aws_integration,
  ]
   providers      = {
    aws = aws.ap_northeast_3
  }
}


