// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FaqPage extends StatelessWidget {

  static List faqList = [
    {
      "ques":"Question 1",
      "ans":"Answer 1"
    },
    {
      "ques":"",
      "ans":""
    },
    {
      "ques":"",
      "ans":""
    },
    
  ];

  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 235, 255, 250),
      appBar: AppBar(
        title: Text("FAQ"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(153, 0, 200, 151),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 4),
        child: ListView.builder(
            itemCount: faqList.length,
            itemBuilder: (context, int index)
            {
              return Card(
                elevation: 20,
                child: ExpansionTile(
                  leading: Icon(MdiIcons.headQuestionOutline, color: Color.fromARGB(153, 0, 200, 151),size: 25,),
                  trailing: Icon(Icons.add, color: Color.fromARGB(153, 0, 200, 151),size: 20.0,),
                  title: Text(faqList[index]['ques'], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(15),
                        child: Text(faqList[index]['ans'],style: TextStyle(fontSize: 15), textAlign: TextAlign.justify)
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}