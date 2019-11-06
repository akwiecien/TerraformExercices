resource "aws_cloudwatch_event_rule" "every_day_at_9_rule" {
  name = "every_day_at_9_rule"
  description = "triggered every day at 9"
  schedule_expression = "cron(0 9 * * ? *)"
}