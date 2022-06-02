import 'package:flutter/material.dart';
import 'package:rabo_labs/screens/login_screen.dart';
import 'package:rabo_labs/screens/prices_set.dart';

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
      body: SizedBox(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: double.infinity, height: 150, padding: const EdgeInsets.symmetric(horizontal:10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceSet()));
            },
            child: Card(
              child: Center(child: Text('Go to Tests')),
              ),
          ),
          ),
           Container(width: double.infinity, height: 150, padding: const EdgeInsets.symmetric(horizontal:10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: Card(
              child: Center(child: Text('Login Screen')),
              ),
      ),
      ),
      ],
      )),
    );
  }
}
