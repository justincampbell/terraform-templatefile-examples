resource "aws_iam_policy" "default" {
  policy = templatefile("${path.module}/policy.tpl", {
    name = "Justin"
  })
}

output "policy" {
  value = "${aws_iam_policy.default.policy}"
}
