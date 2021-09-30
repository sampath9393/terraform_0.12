module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"
  name                   = "RAC-EC2"
  ami                    = var.ami
  instance_type          = var.instance_type_map[var.env]
  key_name               = var.instance_keypair
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [module.instance_sg.this_security_group_id]
  tags = merge(
  local.common_tags,
  {"Name" = "RAC_APACHE_SERVER"
   "env" = "var.env"}
  )
  
}









