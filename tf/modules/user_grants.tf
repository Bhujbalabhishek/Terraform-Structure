
resource "mysql_user" "newuser1"{
    user               = var.user
    host               = "localhost"
    plaintext_password = "cyabge@123"
}

resource "mysql_grant" "newuser1"{
    user       = mysql_user.newuser1.user
    host       = mysql_user.newuser1.host
    database   = var.db
    privileges = ["ALL PRIVILEGES"]
}