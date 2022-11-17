resource "aws_security_group" "for_fontend" {
  name        = "otservice-sg-frontend"
  description = "sg for otservice frontend"
  vpc_id      = aws_vpc.ot_vpc.id
  dynamic "ingress" {
    for_each = [22, 80, 443]
    iterator = port
    content {
      description = "SG-fontend"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "frontend-sg"
  }
}

resource "aws_security_group" "for_app" {
  name        = "app-sg-nodes"
  description = "sg for app nodes"
  vpc_id      = aws_vpc.ot_vpc.id
  dynamic "ingress" {
    for_each = [8081,8080,8083,3000]
    iterator = port
    content {
      description = "SG-nodes-app"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      security_groups = [aws_security_group.for_fontend.id] 
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "app-sg"
  }
}


resource "aws_security_group" "for_data" {
  name        = "data-sg-nodes"
  description = "sg for data nodes"
  vpc_id      = aws_vpc.ot_vpc.id
  dynamic "ingress" {
    for_each = [9200,3306]
    iterator = port
    content {
      description = "SG-nodes-data"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      security_groups = [aws_security_group.for_app.id]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "app-sg"
  }
}