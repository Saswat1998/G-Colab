resource "aws_lambda_function" "my_lambda" {
    function_name = local.lambda_function_name
    handler = "src/api.handler"
    runtime = "nodejs16.x"
    filename ="../build/lambda.zip"
    role = "arn:aws:iam::039562159621:role/admin-lambda"
    source_code_hash = filebase64sha256("../build/lambda.zip")
}