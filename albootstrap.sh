/usr/bin/yum upgrade -y
/usr/bin/yum install httpd -y
/usr/bin/systemctl enable httpd
/usr/bin/systemctl start httpd
/usr/bin/needs-restarting  -r
if [ $? -eq 1 ]
then
echo "Reboot Required"
  /usr/sbin/reboot"
else
echo "Reboot Not Required"
fi