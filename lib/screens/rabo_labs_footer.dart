import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rabo_labs/screens/aboutUs.dart';
import 'package:rabo_labs/screens/faq.dart';
import 'package:rabo_labs/screens/history_screen.dart';
import 'package:rabo_labs/screens/prices_set.dart';
import 'package:rabo_labs/screens/rabo_labs_details.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
        Container(
            // padding: EdgeInsets.only(top: 20),
            child: Column(children: <Widget>[
          Container(
              // padding: EdgeInsets.only(bottom: 10),
              child: Column(children: [
            LinearPercentIndicator(
              // padding: EdgeInsets.only(top: 5),
              width: 300.0,
              lineHeight: 18.0,
              percent: 1,
              backgroundColor: Color.fromARGB(249, 174, 245, 227),
              progressColor: Color.fromARGB(153, 0, 200, 151),
              animation: true,
              animationDuration: 3000,
              restartAnimation: true,
              // fillColor: Color.fromARGB(153, 0, 200, 15),
              barRadius: Radius.elliptical(10, 10),
              center: Text(
                "Rank Points : 50/100",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Lottie.network(
                  "https://assets8.lottiefiles.com/temp/lf20_DGLtjO.json",
                  width: 50,
                  animate: true,
                  // height: 80,
                  // alignment: Alignment(-1, -1),
                  fit: BoxFit.contain),
              // curve: Curves.bounceIn,
              // barRadius: ,
            ),
          ])),
          Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(children: [
                LinearPercentIndicator(
                  // padding: EdgeInsets.only(top: 5),
                  width: 300.0,
                  lineHeight: 18.0,
                  percent: 1,
                  backgroundColor: Color.fromARGB(249, 174, 245, 227),
                  progressColor: Color.fromARGB(153, 0, 200, 151),
                  animation: true,
                  animationDuration: 3000,
                  restartAnimation: true,
                  animateFromLastPercent: true,
                  // fillColor: Color.fromARGB(153, 0, 200, 15),
                  barRadius: Radius.elliptical(10, 10),
                  // leading: Text("Tasks"),
                  center: Text(
                    "Tasks Completed :50/100",
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_h4th9ofg.json",
                      width: 30),

                  // curve: Curves.bounceIn,
                  // barRadius: ,
                ),
              ])),
          Container(
              // padding: EdgeInsets.only(bottom: 10),
              child: Row(children: [
            LinearPercentIndicator(
              // padding: EdgeInsets.only(top: 5),
              width: 300.0,
              lineHeight: 18.0,
              percent: 1,
              backgroundColor: Color.fromARGB(249, 174, 245, 227),
              progressColor: Color.fromARGB(153, 0, 200, 151),
              animation: true,
              animationDuration: 3000,
              restartAnimation: true,
              animateFromLastPercent: true,
              // fillColor: Color.fromARGB(153, 0, 200, 15),
              barRadius: Radius.elliptical(10, 10),
              center: Text(
                "Rating : 50/100",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_9dph3hxi.json",
                  height: 20),

              // curve: Curves.bounceIn,
              // barRadius: ,
            ),
          ]))
        ])),
        Container(
            color: Color.fromARGB(250, 235, 255, 250),
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
        Container(
            color: Color.fromARGB(250, 235, 255, 250),
            child: ListTile(
                trailing: Icon(Icons.payment),
                title: Text("Payments"),
                subtitle: Text("Check your payment settlements"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));
                })),
        Container(
            color: Color.fromARGB(250, 235, 255, 250),
            child: ListTile(
                trailing: Icon(Icons.payment),
                title: Text("Prices"),
                subtitle: Text("Check your payment settlements"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PriceSet()));
                })),
        Container(
            color: Color.fromARGB(250, 235, 255, 250),
            child: ListTile(
                trailing: Icon(Icons.quiz),
                title: Text("FAQ"),
                subtitle: Text("Frequently Asked Questions"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FaqPage()));
                })),
        Container(
          color: Color.fromARGB(250, 235, 255, 250),
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
