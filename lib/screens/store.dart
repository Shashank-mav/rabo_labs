import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
        backgroundColor: Color.fromARGB(153, 0, 200, 151),
      ),
      body: Center(
          child: Text(
        "Coming Soon",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 225, 55, 55)),
      )),
    );
  }
}
