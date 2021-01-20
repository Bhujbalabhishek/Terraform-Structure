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

resource "mysql_user" "newuser1"{
    user               = var.user
    host               = "localhost"
    plaintext_password = "cyabge@123"
}

resource "mysql_grant" "newuser1"{
    user       = mysql_user.newuser1.user
    host       = mysql_user.newuser1.host
    database   = "../modules/database"
    privileges = ["ALL PRIVILEGES"]
}