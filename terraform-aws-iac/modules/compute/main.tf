########################################
# Security Group
########################################
resource "aws_security_group" "web_sg" {
  name   = "web-security-group"
  vpc_id = var.vpc_id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg"
  }
}

########################################
# EC2 Instance (Web App)
########################################
resource "aws_instance" "web" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd

              systemctl start httpd
              systemctl enable httpd

              cat <<HTML > /var/www/html/index.html
              <!DOCTYPE html>
              <html lang="en">
              <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Terraform AWS Infrastructure</title>
                <style>
                  body {
                    font-family: Arial, Helvetica, sans-serif;
                    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
                    color: #ffffff;
                    margin: 0;
                    padding: 0;
                  }
                  .container {
                    max-width: 900px;
                    margin: 100px auto;
                    background: rgba(0, 0, 0, 0.4);
                    padding: 40px;
                    border-radius: 12px;
                    text-align: center;
                  }
                  h1 {
                    font-size: 2.5rem;
                    margin-bottom: 10px;
                  }
                  h2 {
                    font-weight: normal;
                    color: #d1d5db;
                  }
                  .badge {
                    display: inline-block;
                    margin-top: 20px;
                    padding: 10px 20px;
                    background: #22c55e;
                    color: #022c22;
                    border-radius: 20px;
                    font-weight: bold;
                  }
                  .footer {
                    margin-top: 40px;
                    font-size: 0.9rem;
                    color: #cbd5e1;
                  }
                </style>
              </head>
              <body>
                <div class="container">
                  <h1>🚀 Terraform Infrastructure Deployed</h1>
                  <h2>AWS VPC • EC2 • RDS • S3 Remote State</h2>

                  <div class="badge">Infrastructure as Code</div>

                  <p style="margin-top:30px;">
                    This environment was provisioned using <strong>Terraform</strong>,
                    following real-world DevOps practices including
                    remote state management and automated provisioning.
                  </p>

                  <div class="footer">
                    Built as part of a DevOps Engineer learning project
                  </div>
                </div>
              </body>
              </html>
              HTML
              EOF

  tags = {
    Name = "terraform-web-instance"
  }
}
