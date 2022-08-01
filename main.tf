provider "aws" {
  alias      = "ap_northeast_1"
  region     = "ap-northeast-1"
}

provider "aws" {
  alias      = "ap_northeast_2"
  region     = "ap-northeast-2"
}

provider "aws" {
  alias      = "ap_northeast_3"
  region     = "ap-northeast-3"
}

provider "aws" {
  alias      = "ap_south_1"
  region     = "ap-south-1"
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
  alias      = "ca_central_1"
  region     = "ca-central-1"
}

provider "aws" {
  alias      = "eu_central_1"
  region     = "eu-central-1"
}

provider "aws" {
  alias      = "eu_north_1"
  region     = "eu-north-1"
}

provider "aws" {
  alias      = "eu_west_1"
  region     = "eu-west-1"
}

provider "aws" {
  alias      = "eu_west_2"
  region     = "eu-west-2"
}

provider "aws" {
  alias      = "eu_west_3"
  region     = "eu-west-3"
}

provider "aws" {
  alias      = "sa_east_1"
  region     = "sa-east-1"
}

provider "aws" {
  alias      = "us_east_1"
  region     = "us-east-1"
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
  alias      = "us_west_2"
  region     = "us-west-2"
}

module "firefly_aws_integration" {
  source = "./modules/firefly_aws_integration"
  firefly_secret_key = var.firefly_secret_key
  firefly_access_key = var.firefly_access_key
  name = var.name
  firefly_endpoint = var.firefly_endpoint
  event_driven = var.is_event_driven
  target_event_bus_arn = var.target_event_bus_arn
  is_prod = var.is_prod
  full_scan_enabled = var.full_scan_enabled
  role_external_id = var.role_external_id
  providers          = {
    aws = aws.us_east_1
  }
}

module "event_driven_ap_northeast_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-northeast-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_northeast_1
  }
}

module "event_driven_ap_northeast_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-northeast-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-2"
  target_event_bus_arn = var.target_event_bus_arn
  role_arn = module.firefly_aws_integration.role_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_northeast_2
  }
}

module "event_driven_ap_northeast_3" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-northeast-3") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-3"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_northeast_3
  }
}

module "event_driven_ap_south_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-south-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-south-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_south_1
  }
}

module "event_driven_ap_southeast_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-southeast-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-southeast-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_southeast_1
  }
}

module "event_driven_ap_southeast_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-southeast-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-southeast-2"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ap_southeast_2
  }
}

module "event_driven_ca_central_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ca-central-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ca-central-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ca_central_1
  }
}


module "event_driven_eu_central_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-central-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-central-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_central_1
  }
}

module "event_driven_eu_north_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-north-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-north-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_north_1
  }
}

module "event_driven_eu_west_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-west-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_west_1
  }
}

module "event_driven_eu_west_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-west-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-2"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_west_2
  }
}

module "event_driven_eu_west_3" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-west-3") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-3"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_west_3
  }
}

module "event_driven_sa_east_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "sa-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "sa-east-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.sa_east_1
  }
}

module "event_driven_us_east_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-1"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.us_east_1
  }
}

module "event_driven_us_east_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-east-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-2"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
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
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.us_west_1
  }
}

module "event_driven_us_west_2" {
  count = var.is_event_driven && contains(var.event_driven_regions, "us-west-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-west-2"
  role_arn = module.firefly_aws_integration.role_arn
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.us_west_2
  }
}