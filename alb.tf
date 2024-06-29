resource "aws_lb" "main" {
  name               = "flask-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.main.id]
  subnets            = aws_subnet.main[*].id

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "main" {
  name        = "flask-tg"
  port        = var.container_port
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"

  health_check {
    path                = "/health"
    protocol            = "HTTP"
    port                = "traffic-port"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}
