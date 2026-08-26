resource "aws_iam_user" "iam_user" {
  count = var.create_iam_user ? 1 : 0
  name = var.iam_user_name
  tags = {
    Name = var.iam_user_name
  }
}

resource "aws_iam_user_policy" "iam_user_policy" {
  name = "${var.iam_user_name}-policy"
  user = aws_iam_user.iam_user[0].name
  policy = var.iam_policy
}