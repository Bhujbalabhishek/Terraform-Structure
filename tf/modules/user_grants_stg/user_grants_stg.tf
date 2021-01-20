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


resource "mysql_user" "stguser"{
    user               = "stg_user"
    host               = "localhost"
    plaintext_password = "cyabge@123"
}

resource "mysql_grant" "stguser"{
    user       = mysql_user.stguser.user
    host       = mysql_user.stguser.host
    database   = "../database"
    privileges = ["ALL PRIVILEGES"]
}