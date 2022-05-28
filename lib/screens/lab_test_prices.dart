import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:rabo_labs/screens/lab_tests_add.dart';

class LabTestPrices extends StatelessWidget {
  const LabTestPrices({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Lab Name, City"),
      //   backgroundColor: Color.fromARGB(153, 0, 200, 151),
      // ),
      body: SizedBox(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: double.infinity, height: 100, padding: const EdgeInsets.symmetric(horizontal:10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LabTestAdd()));
              icon: Icon(Icons.add);
            },
            child: Card(
              child: Center(child: Text('Add Tests'),),
              color: Color.fromARGB(255, 54, 229, 168),
              ),
          ),
          ),
        ],
      )),
    );
  }
}