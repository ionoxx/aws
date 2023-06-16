#!/bin/bash
/usr/bin/yum upgrade -y
/usr/bin/yum install httpd -y
/usr/bin/systemctl enable httpd
/usr/bin/systemctl start httpd
/usr/sbin/reboot