// import 'package:rabo/rabo_samplebo_profile_edit.dart';
import 'package:rabo_labs/screens/rabo_labs_footer.dart';
import 'package:flutter/material.dart';

import 'rabo_labs_edit.dart';

class MemberProfile extends StatelessWidget {
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Pranay Bohre",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0)),
                          Text("Age : 21",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0)),
                          Text("7619222222",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0)),
                          Text("email@email.com",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0)),
                          Text("Event : Motorcycle",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0)),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          width: 100.0,
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileEdit()));
                            },
                            child: Icon(Icons.edit)),
                      ],
                    ),
                  ]),
            ),
            // Container(
            //     child: Column(
            //   children: [
            //     Container(
            //       child: ProfileFooter(),
            //     )
            //   ],
            // )),
            ProfileFooter()
          ]),
        ));
  }
}
