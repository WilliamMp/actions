
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "myuser"
  password             = random_password.password.result
  parameter_group_name = "default.mysql8.0"
  multi_az             = false
  storage_encrypted    = true
#   db_subnet_group_name = aws_db_subnet_group.password.result
  skip_final_snapshot  = true
}