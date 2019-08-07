
#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
#These will open th HTTP and HTPPDS ports in the firewall.
     sudo  firewall-cmd --permanent --zone=public --add-service=http
     sudo   firewall-cmd --permanent --zone=public --add-service=https
      sudo   firewall-cmd --reload
     sudo  rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
 sudo yum -y install yum-utils
  sudo yum update -y

  #These lines are gonna install PhP v70 because Wordpress started supporting php version +5.6
               sudo yum-config-manager --enable remi-php70
                sudo yum -y install php php-opcache

#These lines are gonna install php modules that are required by CMS Systems like Wordpress, Joomla etc
            sudo  yum -y install php-mysqlnd php-pdo
                 sudo  yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-soap curl curl-devel

#This will install wordpress tar file from the wordpress site and unzip it
                sudo   yum install wget -y
                 sudo   wget http://wordpress.org/latest.tar.gz
                    sudo tar xzvf latest.tar.gz

                   sudo  rsync -avP ~/wordpress/ /var/www/html/
 sudo chown -R apache:apache /var/www/html/*

#These lines are gonna copy your wordpress's configuration file
 sudo cd /var/www/html
 sudo cp wp-config-sample.php wp-config.php