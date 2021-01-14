resource "mysql_user" "newuser1"{
    user               = "newuser1"
    host               = "localhost"
    plaintext_password = "cyabge@123"
}
