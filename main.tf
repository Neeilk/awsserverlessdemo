resource "aws_lambda_function" "demo_lambda" {
    function_name = "lambda_function"
    handler = "lambda_function.lambda_handler"
    runtime = "python3.7"
    role = "${aws_iam_role.lambda_exec_role.arn}"
    filename = "myPythonFunction.zip"
    source_code_hash = "${base64sha256(file("myPythonFunction.zip"))}"
}



resource "aws_iam_role" "lambda_exec_role"{
    name="lambda_exec_role"
      assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}