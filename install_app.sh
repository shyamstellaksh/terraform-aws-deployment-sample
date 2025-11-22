#!/bin/bash

sudo yum update -y || sudo apt-get update -y

sudo yum install -y nginx || sudo apt-get install -y nginx

sudo systemctl enable nginx || true
sudo systemctl start nginx || true

sudo bash -c 'cat > /usr/share/nginx/html/index.html <<EOF
<html>
  <body style="font-family: Arial; text-align: center; margin-top: 80px;">
    <h1>Deployed via Terraform & Jenkins</h1>
    <p>This EC2 instance was provisioned automatically.</p>
  </body>
</html>
EOF'