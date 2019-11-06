resource "aws_lambda_permission" "allow_cloudwatch_call_LambdaTerraformCloudWatch" {
  statement_id = "AllowExecutionFromCloudWatch"
  action = "lambda:invokeFunction"
  function_name = "${aws_lambda_function.LambdaTerraformCloudWatch.function_name}"
  source_arn = "${aws_cloudwatch_event_rule.every_day_at_9_rule.arn}"
  principal = "events.amazonaws.com"
}