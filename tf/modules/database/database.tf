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
