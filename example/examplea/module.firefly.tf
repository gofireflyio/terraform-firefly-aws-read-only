module "firefly" {
  source                = "../../"
  firefly_access_key    = var.firefly_access_key
  firefly_secret_key    = var.firefly_secret_key
  name                  = "firefly rnd eventdriven"
  firefly_endpoint = "https://stagapi.gofirefly.io/api"
  is_event_driven = true
  role_external_id      = "MC4zMzk5MjQ0Mzg4MDM0NzgzMw"
} 