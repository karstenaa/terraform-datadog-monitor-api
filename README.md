terraform-datadog-monitor-api
=================

Terraform module for Datadog Monitor API.



Usage
-----

```hcl
module "monitor_api_beical-app" {
  source         = "github.com/traveloka/terraform-datadog-monitor-api?ref=v0.1.0"
  product_domain = "BEI"
  cluster        = "beical-app"

  thresholds_api_exception = {
    critical = 50
    warning  = 20
  }

  message_api_exception = "Monitor is triggered"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
```

Terraform Version
-----------------

This module was created using Terraform 0.11.7. 
So to be more safe, Terraform version 0.11.7 or newer is required to use this module.

Authors
-------

* [Karsten Ari Agathon](https://github.com/karstenaa)

License
-------

Apache 2 Licensed. See LICENSE for full details.
