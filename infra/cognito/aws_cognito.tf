resource "aws_cognito_user_pool" "pool" {
  name = "congnito-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name          = "cognito-user-pool-client"
  user_pool_id  = aws_cognito_user_pool.pool.id
}