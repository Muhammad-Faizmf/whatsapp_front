
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, curly_braces_in_flow_control_structures, unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/calls.dart';
import 'package:my_app/chats.dart';
import 'package:my_app/status.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  final List<Tab> tab_bar = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(icon: Text('CHAT')),
    Tab(icon: Text('STATUS')),
    Tab(icon: Text('CALLS')),
  ];

  late TabController _tabController;

  
  XFile? image;
 
  Future getimage() async {
    final XFile? imagetemp = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      image = imagetemp;
    });
  }
  
  @override
  void initState(){
    _tabController = TabController(
      length: 4, vsync: this, initialIndex: 1,
      )
    ..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
              print('Search Button is Pressed');
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
              print('Dotted is Pressed');
          }, icon: Icon(Icons.more_vert)),
        ],
        title: Text("WhatsApp"),
        backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: tab_bar
          ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: image == null ? Text('Image not FOUND') :
              Image.file(File(image!.path),
              width: 300,
              height: 300,
              )
          ),
          MyChats(),
          MyStatus(),
          MyCall(),
        ],
      ),
      floatingActionButton: _getFloat(), 
      );
  }

  _getFloat(){
    if(_tabController.index == 0){
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: ()=>{
        getimage()
      },
      child: Icon(
        Icons.camera_alt,
        color: Colors.white
      ),
      );
  }

    else if(_tabController.index == 1){
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () => print("Open Chat"),
      child: Icon(
        Icons.message,
        color: Colors.white
      ),
      );
  }
  else if(_tabController.index == 2){
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () => print("Open Status"),
      child: Icon(
        Icons.camera_alt,
        color: Colors.white
      ),
      );
  }
  else if(_tabController.index == 3){
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () => print("Open Calls"),
      child: Icon(
        Icons.call,
        color: Colors.white
      ),
      );
  }
  else {
    return null;
  }
  }
}