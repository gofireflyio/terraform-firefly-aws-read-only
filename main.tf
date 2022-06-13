#opt in regions are commented
# provider "aws" {
#   alias      = "af_south_1"
#   region     = "af-south-1"
# }

# provider "aws" {
#   alias      = "ap_east_1"
#   region     = "ap-east-1"
# }

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

# provider "aws" {
#   alias      = "cn_north_1"
#   region     = "cn-north-1"
# }

# provider "aws" {
#   alias      = "cn_northwest_1"
#   region     = "cn-northwest-1"
# }

provider "aws" {
  alias      = "eu_central_1"
  region     = "eu-central-1"
}

provider "aws" {
  alias      = "eu_north_1"
  region     = "eu-north-1"
}

# provider "aws" {
#   alias      = "eu_south_1"
#   region     = "eu-south-1"
# }

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

# provider "aws" {
#   alias      = "me_south_1"
#   region     = "me-south-1"
# }

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
  providers          = {
    aws = aws.us_east_1
  }
}

# module "event_driven_af_south_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "af-south-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "af-south-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.af_south_1
#   }
# }

# module "event_driven_ap_east_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "ap-east-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "ap-east-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.ap_east_1
#   }
# }

module "event_driven_ap_northeast_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "ap-northeast-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-1"
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.ca_central_1
  }
}

# module "event_driven_cn_north_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "cn-north-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "cn-north-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.cn_north_1
#   }
# }

# module "event_driven_cn_northwest_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "cn-northwest-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "cn-northwest-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.cn_northwest_1
#   }
# }

module "event_driven_eu_central_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-central-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-central-1"
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_north_1
  }
}

# module "event_driven_eu_south_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "eu-south-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "eu-south-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.eu_south_1
#   }
# }

module "event_driven_eu_west_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "eu-west-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-1"
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.eu_west_3
  }
}

# module "event_driven_me_south_1" {
#   count = var.is_event_driven && contains(var.event_driven_regions, "me-south-1") ? 1 : 0
#   source = "./modules/firefly_event_driven"
#   env    = var.name
#   region = "me-south-1"
#   eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
#   lambda_environment_variables = {
#     FIREFLY_SECRET_KEY = var.firefly_secret_key
#     FIREFLY_ACCESS_KEY = var.firefly_access_key
#     FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
#     SSM_PARAMETER_NAME = var.token_parameter_name
#     FIREFLY_ACCOUNT_ID = var.firefly_account_id
# }
#   depends_on = [
#     module.firefly_aws_integration
#   ]
#   providers      = {
#     aws = aws.me_south_1
#   }
# }

module "event_driven_sa_east_1" {
  count = var.is_event_driven && contains(var.event_driven_regions, "sa-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "sa-east-1"
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
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
  eventdriven_role_name = module.firefly_aws_integration.event_driven_role_name
  lambda_environment_variables = {
    FIREFLY_SECRET_KEY = var.firefly_secret_key
    FIREFLY_ACCESS_KEY = var.firefly_access_key
    FIREFLY_EVENT_DRIVEN_API = var.firefly_endpoint
    SSM_PARAMETER_NAME = var.token_parameter_name
    FIREFLY_ACCOUNT_ID = var.firefly_account_id
}
  depends_on = [
    module.firefly_aws_integration
  ]
  providers      = {
    aws = aws.us_west_2
  }
}