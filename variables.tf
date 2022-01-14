variable "name" {
  type    = string
  default = "auto-shutdown"
}

variable "instance_type" {
  type    = string
  default = "t3.nano"
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAy4gSfdSdFRQo4RXM5Nx7X1ZkPM02hE5m+YBumXQLb/uVLcPIODUWF5UlpofbIeAc0YI+aGms8XHvE82VTaz7b686G9ef/sDzpB+qBiq4tKuBgzLx3vmWcv+DWSRfTbGCy82ww0d4huwLQsPMToAWHHU1Tzx9CphDXUwHNS30/GqwekP2O7Fq3peGVEaXBpVl68FxdpvKsDg3Qyt1OsF/N3RoHGsaJhYDyGUkGTlFqN7YGmnw96eX9j6gYJtje0SzrLbaFA3xnW34UN5oSov4VqouBYLCNsBywfxIK/gF9I14N+GMvEy0eYuWGtUjJaziP3xCeztxwttb2cnXAQm2qw== petrov@petrov-laptop"
}

variable "open_ssh" {
  type    = bool
  default = false
}

variable "crontab_rule" {
  type    = string
  default = "59 23 * * 7"
}