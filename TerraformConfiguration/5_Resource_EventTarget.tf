resource "aws_cloudwatch_event_target" "every_daty_at_9_rule_event_rule" {
  rule = "${aws_cloudwatch_event_rule.every_day_at_9_rule.name}"
  arn = "${aws_lambda_function.LambdaTerraformCloudWatch.arn}"
}