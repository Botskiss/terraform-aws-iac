########################################
# RDS Subnet Group (FIXED: 2 AZs)
########################################
resource "aws_db_subnet_group" "db_subnet_group" {
  name = "db-subnet-group"

  subnet_ids = var.subnet_ids

  tags = {
    Name = "db-subnet-group"
  }
}

########################################
# RDS Instance (MySQL)
########################################
resource "aws_db_instance" "db" {
  allocated_storage   = 20
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  db_name             = "appdb"
  username            = "admin"
  password            = "password123"
  publicly_accessible = true
  skip_final_snapshot = true

  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name

  tags = {
    Name = "terraform-rds"
  }
}
