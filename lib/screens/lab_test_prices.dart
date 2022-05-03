import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class LabTestPrices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        // Container(
        // constraints: BoxConstraints,
        // height: 55,
        // decoration: BoxDecoration(
        //     border: Border.all(
        //   color: Color.fromRGBO(0, 0, 0, 0.384),
        // )),
        // child:
        ListTile(
            title: NumberInputWithIncrementDecrement(
          controller: TextEditingController(),
          separateIcons: true,
          numberFieldDecoration: InputDecoration(
            constraints: BoxConstraints(maxWidth: 50),
            isDense: true,
          ),
          widgetContainerDecoration: BoxDecoration(
              border: Border.all(
            color: Color.fromARGB(250, 235, 255, 250),
          )),
          incIcon: Icons.add,
          decIcon: Icons.remove,
          incIconSize: 30,
          decIconSize: 30,
          scaleWidth: 0.2,
          scaleHeight: 0.3,
          incIconColor: Color.fromARGB(153, 0, 200, 151),
          decIconColor: Color.fromARGB(153, 0, 200, 151),
          incIconDecoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(250, 235, 255, 250),
              ),
              shape: BoxShape.circle),
          decIconDecoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(250, 235, 255, 250)),
              shape: BoxShape.circle),
          buttonArrangement: ButtonArrangement.incRightDecLeft,
          textAlign: TextAlign.center,
        )),
        // ),
      ],
    ));
  }
}
