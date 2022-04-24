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
            title: Card(
          child: Container(
              child: NumberInputWithIncrementDecrement(
            controller: TextEditingController(),
            min: 5,
            max: 5,
            scaleWidth: 0.5,
            buttonArrangement: ButtonArrangement.rightEnd,
            textAlign: TextAlign.right,
          )),
        )),
      ],
    ));
  }
}
