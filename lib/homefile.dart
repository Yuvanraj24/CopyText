import 'package:flutter/material.dart';
import 'package:test_chat_app1/copy&paste.dart';
import 'package:test_chat_app1/copy_stackoverflow.dart';
import 'package:test_chat_app1/gesture_copy_text.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureCopy()
    );
  }
}