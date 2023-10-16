
resource "aws_instance" "webserver1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet1_id
  user_data              = base64encode(file(var.userdata1_file))
}

resource "aws_instance" "webserver2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet2_id
  user_data              = base64encode(file(var.userdata2_file))
}
