resource "aws_iam_role" "LambdaCloudWachRole" {
  name = "LambdaCloudWatchRole"
  description = "Role for lambda"
  assume_role_policy = "${file("Role.json")}"
  tags = {
    tag-key = "tag-vale"
  }
}