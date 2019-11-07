resource "aws_iam_role" "LambdaCloudWachRole" {
  name = "LambdaCloudWatchRole"
  description = "Role for lambda"
  assume_role_policy = "${file("Role.json")}"
  tags = {
    tag-key = "tag-vale"
  }
}

resource "aws_iam_role_policy_attachment" "AWSLambdaBasicExecutionRole-attach" {
  role       = "${aws_iam_role.LambdaCloudWachRole.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
