resource "aws_security_group" "lambda_sg" {
  name        = "${var.project_name}-lambda-sg"
  description = "Security group para Lambda"
  vpc_id      = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.project_name}-lambda-sg"
    Environment = var.environment
  }
}

resource "aws_security_group" "dynamodb_sg" {
  name        = "${var.project_name}-dynamodb-sg"
  description = "Security group para DynamoDB VPC Endpoint"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_group_id = aws_security_group.lambda_sg.id
  }

  tags = {
    Name        = "${var.project_name}-dynamodb-sg"
    Environment = var.environment
  }
}