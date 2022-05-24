import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Name, City"),
        backgroundColor: Color.fromARGB(153, 0, 200, 151),
      ),
      body: Text("hello"),
    );
  }
}
