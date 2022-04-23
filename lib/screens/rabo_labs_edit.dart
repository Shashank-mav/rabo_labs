// import 'package:rabo/screens/rabo_sampleboy_profile_edit_details.dart';
import 'package:rabo_labs/screens/rabo_labs_details.dart';
import 'package:flutter/material.dart';
// import 'dart:js_util';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Color.fromARGB(153, 0, 200, 151),
          elevation: 0,
        ),
        body: Container(
          color: Color.fromARGB(250, 235, 255, 250),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Container(
              // height: 250,
              color: Color.fromARGB(153, 0, 200, 151),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    width: double.maxFinite,
                    height: 100.0,
                    child: CircleAvatar(
                      radius: 16.0,
                      child: ClipRRect(
                        child: Image.asset('assets/images/RaboLogo.png'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ), // Your image widget here
                  ),
                  TextButton(
                      onPressed: null,
                      // () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => EditDetails()));
                      // },
                      child: Icon(Icons.edit)),
                ],
              ),
            ),
          ]),
        ));
  }
}
