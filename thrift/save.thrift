namespace cpp save_service

service Save {
    # username : the name of myserver
    # password : the first 8 digits of the md5sum of the password of myserver
    # if verified successfully return 0, else return 1
    # if verification is successful, the result will be saved in myserver:homework/lesson_6/result.txt
    i32 save_data(1: string username, 2: string password, 3: i32 player1_id, 4: i32 player2_id)

}
