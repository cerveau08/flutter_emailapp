import 'package:emailapp/MessageList.dart';
import 'package:flutter/material.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.blue
      ),  
      home: MessageList(title: 'Flutter EmailApp'),
      debugShowCheckedModeBanner: false,
    );
  }
}



