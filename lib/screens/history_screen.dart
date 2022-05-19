import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage> {
  List<HistoryModel> histories = [
    HistoryModel('assets/images/ico_send_money.png', 'Paid to', 'Rabo', 999.0,
        '08 May 2018', 'assets/images/ico_logo_red.png'),
    HistoryModel('assets/images/ico_send_money.png', 'Pathology\nbill paid',
        'Rabo Labs', 830.0, '08 May 2022', 'assets/images/ico_logo_red.png'),
    HistoryModel('assets/images/ico_send_money.png', 'Blood\nTest', 'Rabo Labs',
        830.0, '08 May 2022', 'assets/images/ico_logo_red.png'),
    // HistoryModel('assets/images/ico_send_money.png', 'Received from', 'Rabo',
    //     30.0, '08 May 2022', 'assets/images/ico_logo_blue.png'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Settlements"),
          backgroundColor: Color.fromARGB(153, 0, 200, 151)),
      body: Container(
        color: Color.fromARGB(250, 235, 255, 250),
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
//              height: 42.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Month',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: histories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _historyWidget(histories[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _historyWidget(HistoryModel history) {
    return Container(
//      height: 100.0,
      margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  history.historyAssetPath,
                  height: 40.0,
                  width: 40.0,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        history.historyType,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(history.receiverName)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '\₹{history.amount}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Debit from \non ${history.date}',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                            child: Image.asset(
                              history.cardLogoPath,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryModel {
  final String historyAssetPath;
  final String historyType;
  final String receiverName;
  final double amount;
  final String date;
  final String cardLogoPath;

  HistoryModel(this.historyAssetPath, this.historyType, this.receiverName,
      this.amount, this.date, this.cardLogoPath);
}
