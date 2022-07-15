###  Introduction to Thrift

Thrift is a kind of RPC(Remote Procedure Call) framework.

The structure of this simple project is shown below

![structure](https://github.com/Noob-Bob/Thrift_Lesson/blob/master/Repo_image/structure.jpg?raw=true)

#### Process of the Project

1. Create match-server

   ```
   cd thrift_lesson/match_system/src
   thrift -r --gen cpp ../../thrift/match.thrift
   mv gen-cpp/ match_server
   rm match_server/Match_server.skeleton.cpp
   ```

2. Create save-client

   ```
   cd thrift_lesson/match_system/src
   thrift -r --gen cpp ../../thrift/save.thrift
   mv gen-cpp/ save_client
   rm save_client/Save_server.skeleton.cpp
   ```


3. Create main.cpp

   The source code is [here](https://github.com/Noob-Bob/Thrift_Lesson/blob/master/match_system/src/main.cpp)

4. Compile

   ```
   g++ -c main.cpp match_server/*.cpp save_client/*.cpp
   ```
   
5. Link

   ```
   g++ *.o -o main -lthrift -pthread
   ```
   
6. Start the server

   ```
   ./main
   ```

7. Create match-client

   ```
   cd thrift_lesson/game/src
   thrift -r --gen py ../../thrift/save.thrift
   mv gen-py/ match_client
   ```

8. Create client.py

   The source code is [here](https://github.com/Noob-Bob/Thrift_Lesson/blob/master/game/src/client.py)

9. Implement client

   ```
   python3 client.py
   ```

   

