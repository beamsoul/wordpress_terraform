
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum update -y

yum-config-manager --enable remi-php70
yum -y install php php-opcache

yum -y install php-mysqlnd php-pdo
yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-soap curl curl-devel

yum install wget -y
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz

rsync -avP ~/wordpress/ /var/www/html/
 chown -R apache:apache /var/www/html/*

  cd /var/www/html
   cp wp-config-sample.php wp-config.php