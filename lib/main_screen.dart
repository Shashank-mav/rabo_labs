// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rabo_labs/navbar_key.dart';
import 'package:rabo_labs/screens/feed.dart';
import 'package:rabo_labs/screens/history_screen.dart';
import 'package:rabo_labs/screens/home.dart';
import 'package:rabo_labs/screens/rabo_labs_details.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  var selectedIndex = 0;
  final screen = [HomeScreen(), FeedScreen(), HistoryPage(), MemberProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 235, 255, 250),
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        key: NavbarKey.getKey(),
        items: [
          // Icons(Icons.home, size: 30),
          Icon(
            (selectedIndex == 0) ? Icons.home : Icons.home,
            size: 30,
            color: const Color.fromRGBO(0, 200, 151, 1),
          ),
          Icon(
              (selectedIndex == 1)
                  ? Icons.store_mall_directory_rounded
                  : Icons.store_mall_directory_rounded,
              color: const Color.fromRGBO(0, 200, 151, 1),
              size: 30),
          Icon(
              (selectedIndex == 2)
                  ? Icons.payment_rounded
                  : Icons.payment_rounded,
              color: const Color.fromRGBO(0, 200, 151, 1),
              size: 30),
          Icon(
            (selectedIndex == 2) ? Icons.account_circle : Icons.account_circle,
            color: const Color.fromRGBO(0, 200, 151, 1),
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        // buttonBackgroundColor: Color.fromARGB(250, 235, 255, 250),
        backgroundColor: Color.fromARGB(250, 235, 255, 250),
        animationDuration: const Duration(milliseconds: 300),
        color: Color.fromARGB(250, 235, 255, 250),
      ),
      body: screen[selectedIndex],
    );
  }
}
