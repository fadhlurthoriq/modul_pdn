import 'package:flutter/material.dart';
import 'package:project_chat/components/drawer.dart';
import 'package:project_chat/auth/chat_service.dart';
import 'package:project_chat/auth/auth_service.dart';
import 'package:project_chat/components/user_tile.dart';
import 'package:project_chat/pages/chat_page.dart';

class HomePage extends StatelessWidget { 
  HomePage({super.key}); 

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  
  @override 
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      ),
      drawer: MyDrawer(), 
      body: _buildUserList()
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(
      stream: _chatService.getUserStream(), 
      builder: (context, snapshot) {

        //error
        if(snapshot.hasError){
          return const Text("Error");
        }

        //loading
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Text("Loading...");
        }

          return ListView(
            children: snapshot.data!.map<Widget>((userData)=>
            _buildUserListItem(userData, context)).toList()
          );
       },    
    );
  }

  Widget _buildUserListItem(
    Map<String, dynamic> userData, BuildContext context){
      return UserTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
            context,
          MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail: userData["email"], 
                receiverID: userData["uid"],
              )
            )
          );
        }
      );
    }
}