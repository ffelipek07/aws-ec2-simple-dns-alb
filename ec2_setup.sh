#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
echo 'Hello from Terraform' > /var/www/html/index.html
service httpd start

fdisk /dev/xvdc << FDISK_CMDS
g
n
1
+500MiB
n
2
t
1
83
t
2
83
w
FDISK_CMDS
mkfs -t ext4 /dev/xvdc1
mount /dev/xvdc1 /var/www/html


# sudo stress-ng --cpu 32 --timeout 180 --metrics-brief
