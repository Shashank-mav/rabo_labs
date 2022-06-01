import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  @override
  EditState createState() => EditState();
}

class EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: TextFormField(
                decoration: InputDecoration(
                    suffix: TextButton(
                      child: Icon(Icons.cancel,
                          color: Color.fromARGB(153, 0, 200, 151)),
                      onPressed: null,
                    ),
                    hintText: "First Name",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 0, 200, 151),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151)))),
                cursorColor: Color.fromARGB(153, 0, 200, 151),
              )),
          Container(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: TextFormField(
                decoration: InputDecoration(
                    suffix: TextButton(
                      child: Icon(Icons.cancel,
                          color: Color.fromARGB(153, 0, 200, 151)),
                      onPressed: null,
                    ),
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 0, 200, 151),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151)))),
                cursorColor: Color.fromARGB(153, 0, 200, 151),
              )),
          Container(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: TextFormField(
                decoration: InputDecoration(
                    suffix: TextButton(
                      child: Text("update",
                          style: TextStyle(
                              color: Color.fromARGB(153, 0, 200, 151))),
                      onPressed: null,
                    ),
                    hintText: "76555555555",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 0, 200, 151),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151)))),
                cursorColor: Color.fromARGB(153, 0, 200, 151),
              )),
          Container(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: TextFormField(
                decoration: InputDecoration(
                    suffix: TextButton(
                      child: Text("update",
                          style: TextStyle(
                              color: Color.fromARGB(153, 0, 200, 151))),
                      onPressed: null,
                    ),
                    hintText: "email@email.com",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 0, 200, 151),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(153, 0, 200, 151)))),
                cursorColor: Color.fromARGB(153, 0, 200, 151),
              )),
          Center(
            heightFactor: 1.5,
            child: ElevatedButton(
              child: Text("Submit",
                  style: TextStyle(color: Color.fromARGB(250, 235, 255, 250))),
              onPressed: () => Edit(),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Color.fromARGB(153, 0, 200, 151))),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () => Edit(),
                  child: Row(children: [
                    Icon(
                      Icons.logout_outlined,
                      color: Color.fromARGB(153, 0, 200, 151),
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(color: Color.fromARGB(153, 0, 200, 151)),
                    )
                  ]))),
        ],
      ),
    );
  }
}
