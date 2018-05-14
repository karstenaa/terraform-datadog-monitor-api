module "api_exception" {
  source  = "github.com/traveloka/terraform-datadog-monitor?ref=v0.1.0"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  cluster        = "${var.cluster}"

  name               = "${var.product_domain} - ${var.cluster} - API Exception is High"
  query              = "avg(last_5m):sum:api.res.exc.count{cluster:${var.cluster}} by {host,classname,methodname}"
  thresholds         = "${var.thresholds_api_exception}"
  message            = "${var.message_api_exception}"
  escalation_message = "${var.escalation_message_api_exception}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}
