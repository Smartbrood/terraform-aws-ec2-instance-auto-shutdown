# terraform-aws-ec2-instance-auto-shutdown

## Usage

- Update region and profile in provider.tf
- terraform init && terraform apply -var 'public_key=ssh-rsa ....' # set public ssh key
- terraform destroy

or

- Edit public_key in Makefile
- make apply
- make destroy

## TODO

- Change terraform backend to S3 bucket
