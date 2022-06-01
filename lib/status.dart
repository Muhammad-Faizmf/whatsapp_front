
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:my_app/chat_model.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({ Key? key }) : super(key: key);

  @override
  _MyStatusState createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/shirt1.jpg'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to Add Status'),
            onTap: (){
                print("My Own Status Details");
            },
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Recent Updates",
            style: TextStyle(color: Colors.black54),
            ),
          )
          ),
          Flexible(child: ListView.builder(
            itemCount: chat_data.length,
            itemBuilder: (context, i)=> Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                  backgroundImage: AssetImage(chat_data[i].avatar),
            ),
            title: Text(chat_data[i].name),
            subtitle: Text(chat_data[i].time),
            onTap: (){
                print("Others Status to being Watching");
            },

                )
              ],
            )))
      ],
    );
  }
}