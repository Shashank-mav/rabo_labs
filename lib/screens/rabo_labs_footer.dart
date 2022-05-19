import 'package:rabo_labs/screens/aboutUs.dart';
import 'package:rabo_labs/screens/faq.dart';
import 'package:rabo_labs/screens/history_screen.dart';
import 'package:rabo_labs/screens/prices_set.dart';
import 'package:rabo_labs/screens/rabo_labs_details.dart';
import 'package:flutter/material.dart';
// import 'package:rabo/screens/rabo_sampleboy_profile_details.dart';

class ProfileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _act = 1;
    return Expanded(
        // margin: EdgeInsets.only(top: 20),
        // color: Color.fromARGB(250, 235, 255, 250),
        child:
            // Scaffold(
            //     backgroundColor: Color.fromARGB(2  55, 146, 207, 194),
            //     body:
            ListView(
      children: [
        Padding(padding: EdgeInsets.only(left: 5, right: 0)),
        Card(
            color: Color.fromARGB(153, 0, 200, 151),
            child: ListTile(
              trailing: Icon(Icons.list_alt),
              // contentPadding: EdgeInsets.only(left: 0, right: 0),
              title: Text("Orders"),
              subtitle: Text("Check your ongoing, upcoming and past orders"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MemberProfile()));
              },
              // dense: true,
            )),
        Card(
            color: Color.fromARGB(153, 0, 200, 151),
            child: ListTile(
                trailing: Icon(Icons.payment),
                title: Text("Payments"),
                subtitle: Text("Check your payment settlements"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));
                })),
        Card(
            color: Color.fromARGB(153, 0, 200, 151),
            child: ListTile(
                trailing: Icon(Icons.payment),
                title: Text("Prices"),
                subtitle: Text("Check your payment settlements"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PriceSet()));
                })),
        Card(
            color: Color.fromARGB(153, 0, 200, 151),
            child: ListTile(
                trailing: Icon(Icons.quiz),
                title: Text("FAQ"),
                subtitle: Text("Frequently Asked Questions"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FaqPage()));
                })),
        Card(
          color: Color.fromARGB(153, 0, 200, 151),
          child: ListTile(
            trailing: Icon(Icons.info),
            title: Text("About"),
            subtitle: Text("Know about our work and our proceedings."),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Images()));
            },
          ),
        )
      ],
      // padding: EdgeInsets.only(top: 50),
      shrinkWrap: true,
    )
        // )
        );
  }
}
