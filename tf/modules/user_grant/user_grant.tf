resource "mysql_grant" "newuser1"{
    user       = mysql_user.newuser1.user
    host       = mysql_user.newuser1.host
    database   = mysql_database.app.name
    privileges = ["ALL PRIVILEGES"]
}
