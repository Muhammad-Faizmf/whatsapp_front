
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({ Key? key }) : super(key: key);

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleSpacing: 0.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)), 
           IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/no_img.jpg'),
            radius: 20,
            ),
            Padding(padding: EdgeInsets.all(10),
            child: Text("Muhammad"))
          ],
        )
      ),
      body: Column(
        children: [
          Expanded(child: Text("Message")),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Flexible(child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)
                    ),
                    hintText: 'Type a Message',
                  ),
                )),
              ],
            )
          )
        ],
      )
    );
  }
}