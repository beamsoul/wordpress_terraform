Name                        = "Wordpress"
Env                         = "Dev"
Created_by                  = "JANNA"
Dept                        = "IT"
ami                         = "ami-02eac2c0129f6376b"
instance_type               = "t2.micro"
key_name                    = "keepgoingpem.pem"
region                      = "us-east-1"
appname                     = "wordpress"
min_app_size                = 3
max_app_size                = 6
desired_app_capacity        = 3


min_db_size                = 3
max_db_size                = 6
desired_db_capacity        = 3
vpc_zone_identifier        = "private-sb"