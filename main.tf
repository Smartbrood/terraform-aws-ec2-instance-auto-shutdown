resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.public_key
}

resource "aws_security_group_rule" "ssh" {
  count = var.open_ssh == true ? 1 : 0
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = tolist(data.aws_security_groups.default.ids)[0]
}

module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 3.0"
  name                   = var.name
  ami                    = data.aws_ami.amazon-linux.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  monitoring             = true
  vpc_security_group_ids = data.aws_security_groups.default.ids
  subnet_id              = tolist(data.aws_subnet_ids.default.ids)[0]
  tags = {
    Terraform   = "true"
  }
  instance_initiated_shutdown_behavior = "terminate"
  user_data                            = local.user_data
}

