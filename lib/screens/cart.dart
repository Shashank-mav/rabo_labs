// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: RaisedButton(
        child: const Text(
          'Continue',
        ),
        onPressed: () {},
      ),
    );
  }
}
