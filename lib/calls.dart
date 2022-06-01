
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_app/chat_model.dart';

class MyCall extends StatefulWidget {
  const MyCall({ Key? key }) : super(key: key);

  @override
  _MyCallState createState() => _MyCallState();
}

class _MyCallState extends State<MyCall> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chat_data.length,
      itemBuilder: (context, i) => Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat_data[i].avatar)
          ),
          title: Text(chat_data[i].name),
          subtitle: Row(
            children: [
            Container(
              child: chat_data[i].calltype,
            ),
            Text(chat_data[i].time)
          ]
          ),
          trailing: IconButton(onPressed: () {
            print('Call Button is Pressed');
          }, icon: Icon(Icons.call), color: Theme.of(context).primaryColor)
        )
      ],
    ));
  }
}