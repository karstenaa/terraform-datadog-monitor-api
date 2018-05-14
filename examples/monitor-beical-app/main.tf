module "monitor_api_beical-app" {
  source         = "../../"
  product_domain = "BEI"
  cluster        = "beical-app"

  thresholds_api_exception = {
    critical = 50
    warning  = 20
  }

  message_api_exception = "Monitor is triggered"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
