
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:my_app/chat_model.dart';
import 'package:my_app/chatdetail.dart';


class MyChats extends StatefulWidget {
  const MyChats({ Key? key }) : super(key: key);

  @override
  _MyChatsState createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chat_data.length,
      itemBuilder: (context, i) => Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(chat_data[i].avatar),
            ),
            title: Text(chat_data[i].name),
            subtitle: Text(chat_data[i].message),
            trailing: Text(chat_data[i].time),
            onTap: (){
                Navigator.push(context, MaterialPageRoute
                (builder: (context) => ChatDetail()));
            },
          )
        ],
      ));
  }
}

class ChatDetailPage {
}