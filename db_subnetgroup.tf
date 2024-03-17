
resource "aws_db_subnet_group" "default" {
  name       = "my_subnet_group"
  subnet_ids = [local.subnet1, local.subnet2]

  tags = {
    Name = "My DB Subnet Group"
  }
}