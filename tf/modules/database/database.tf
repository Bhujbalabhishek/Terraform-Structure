terraform {
  required_providers {
    mysql = {
      source   = "winebarrel/mysql"
      version  = "1.9.0-p6"
    }
  }
}

provider "mysql" {
    endpoint = "/var/run/mysqld/mysqld.sock"
    username = "root"
    password = "cybage@123"
}

resource "mysql_database" "app" {
  name = "prod_db"
}

resource "mysql_user" "newuser1"{
    user               = "prod_user"
    host               = "localhost"
    plaintext_password = "cyabge@123"
}

resource "mysql_grant" "newuser1"{
    user       = mysql_user.newuser1.user
    host       = mysql_user.newuser1.host
    database   = mysql_database.app.name
    privileges = ["ALL PRIVILEGES"]
}