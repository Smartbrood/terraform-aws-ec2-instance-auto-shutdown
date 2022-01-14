
locals {
  user_data = <<-EOT
    #!/bin/bash
    echo "${var.crontab_rule} /usr/sbin/shutdown -P 0 >/dev/null 2>&1" > /tmp/crontab-rule-auto-shutdown
    crontab -u root /tmp/crontab-rule-auto-shutdown
EOT
}