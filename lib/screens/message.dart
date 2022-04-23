import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("message"));
  }
}
