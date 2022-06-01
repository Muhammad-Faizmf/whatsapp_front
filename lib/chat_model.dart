

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatModel{

  final String name;
  final String message;
  final String avatar;
  final String time;
  final Icon calltype;

// Using Construtor
  ChatModel(this.name, this.message, this.avatar, this.time, this.calltype);
}

Icon callReceived = Icon(
  Icons.call_received,
  size: 18,
  color: Colors.green,
);
Icon callMissd = Icon(
  Icons.call_missed,
  size: 18,
  color: Colors.red,
);
  
List<ChatModel> chat_data =  [
  ChatModel(
    'Person1',
    'Hello how are you',
    'images/no_img.jpg',
    '10:00',
    callReceived
  ),
  ChatModel(
    'Person2',
    'What is going on ?',
    'images/shirt1.jpg',
    '5:30',
    callMissd
  ),
  ChatModel(
    'Person3',
    'What is the Weather Condition in pakistan ?',
    'images/shirt2.jpg',
    '4:10',
    callMissd

  ),
  ChatModel(
    'Person4',
    '?????????????????',
    'images/m2.jpg',
    '2:00',
    callReceived
  ),
  ChatModel(
    'Person5',
    '*********',
    'images/shirt1.jpg',
    '12:05',
    callMissd
  ),
  ChatModel(
    'Person6',
    '&&&&&&&&&&',
    'images/m3.jpg',
    '5:40',
    callReceived
  ),
  ChatModel(
    'Person7',
    '~~~~~~~~~~~',
    'images/no_img.jpg',
    '6:08',
    callReceived
  ),
  ChatModel(
    'Person8',
    '+++++++++++',
    'images/shirt2.jpg',
    '1:20',
    callMissd
  ),
  ChatModel(
    'Person9',
    '--------',
    'images/shirt1.jpg',
    '1:20',
    callMissd
  ),
  ChatModel(
    'Person10',
    'What is the Weather Condition in pakistan ?',
    'images/shirt2.jpg',
    '4:10',
    callReceived
  ),
  ChatModel(
    'Person11',
    '--------',
    'images/shirt1.jpg',
    '1:20',
    callMissd
  ),
];
