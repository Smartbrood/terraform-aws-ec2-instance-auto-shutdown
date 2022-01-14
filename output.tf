output "aws_vpc_id" {
  value = data.aws_vpc.default.id
}

output "aws_subnet_ids" {
  value = data.aws_subnet_ids.default.ids
}

output "security_group_ids" {
  value = data.aws_security_groups.default.ids
}

output "aws_ami_id" {
  value = data.aws_ami.amazon-linux.id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}


