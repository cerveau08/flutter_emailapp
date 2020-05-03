import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'Message.g.dart';

@JsonSerializable()
class Message {
  final String subject;
  final String body;

  Message(this.subject, this.body);

  factory Message.fromJson(Map<String, dynamic> json) =>
  _$MessageFromJson(json);

  static Future<List<Message>> browse({status = 'important'}) async{
    String url = status == 'important'
      ? 'http://www.mocky.io/v2/5eaed5ae3300000e009f420d'
      : 'http://www.mocky.io/v2/5eadb4712f00004b00198848';
    http.Response response =
      await http.get(url);
      //http://www.mocky.io/v2/5eaed5ae3300000e009f420d
    await Future.delayed(Duration(seconds: 1));
    String content = response.body;
    List collection = json.decode(content);
    List<Message> _messages = 
      collection.map((json) => Message.fromJson(json)).toList();
    return _messages;
  }
}