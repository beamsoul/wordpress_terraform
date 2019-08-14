Name                        = "Wordpress"
Env                         = "Dev"
Created_by                  = "JANNA"
Dept                        = "IT"
ami                         = "ami-02f706d959cedf892"
instance_type               = "t2.micro"
key_name                    = "winkey-terraf"
region                      = "us-east-2"
appname                     = "wordpress"
min_app_size                = 3
max_app_size                = 6
desired_app_capacity        = 3


min_db_size                = 3
max_db_size                = 6
desired_db_capacity        = 3
vpc_zone_identifier        = "private-sb"