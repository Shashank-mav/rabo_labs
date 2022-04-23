import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PriceSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(153, 0, 200, 151),
        title: Text('Flutter ListView - googleflutter.com'),
      ),
      body: Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 130,
              color: Color.fromARGB(153, 0, 200, 151),
              child: const Center(
                  child: Text(
                'Lab Tests',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              )),
            ),
            Container(
              width: 130,
              color: Color.fromARGB(153, 0, 200, 151),
              child: const Center(
                  child: Text(
                'Body Scans',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              )),
            ),
            Container(
              width: 130,
              color: Color.fromARGB(153, 0, 200, 151),
              child: const Center(
                  child: Text(
                'Physiotherapy',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              )),
            ),
            Container(
              width: 130,
              color: Color.fromARGB(153, 0, 200, 151),
              child: const Center(
                  child: Text(
                'Surgery',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
