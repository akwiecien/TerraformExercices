
resource "aws_lambda_function" "LambdaTerraformCloudWatch" {
  filename = "PackageToDeploy.zip"
  function_name = "LambdaTerraformCloudWatch"
  handler = "LambdaTerraformCloudWatch.lambda_handler"
  runtime = "python3.7"
  timeout = "60"
  role = "${aws_iam_role.LambdaCloudWachRole.arn}"
}