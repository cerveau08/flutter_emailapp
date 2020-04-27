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
      home: MyHomePage(title: 'Flutter EmailApp'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  final String title;
  var messages = const [
    'My first message',
    'My second message',
    'You won lottery',
    'You should read',
    'You won lottery again'
  ];
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        ),
        body: ListView.separated(
          itemCount: messages.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            var title = messages[index];
            return ListTile(
              title: Text(title),
              isThreeLine: true,
              leading: CircleAvatar(
                child: Text('Cerv'),
              ),
              subtitle: Text('Another text which is very very long so everyone can read it see it'),
            );
          },
          ),
        );
  }
  
}

