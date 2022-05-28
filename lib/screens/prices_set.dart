import 'package:rabo_labs/screens/body_scan_prices.dart';
import 'package:rabo_labs/screens/lab_test_prices.dart';
import 'package:rabo_labs/screens/physiotherapy_prices.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rabo_labs/screens/surgery.dart';

class PriceSet extends StatefulWidget {
  @override
  _SPriceSet createState() => _SPriceSet();
}

class _SPriceSet extends State<PriceSet> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // late ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    // _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    //       child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Example App'),
    //       bottom: TabBar(
    //         tabs: <Widget>[
    //           Tab(
    //             text: "Home",
    //             icon: Icon(Icons.home),
    //           ),
    //           Tab(
    //             text: "Example page",
    //             icon: Icon(Icons.help),
    //           )
    //         ],
    //       ),
    //     ),

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // float
      floatingActionButton: SizedBox(
        height: 40,
        width: 80,
        child: FloatingActionButton(
          child: Text("Submit"), //child widget inside this button
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            print("Button is pressed.");
            //task to execute when this button is pressed
          },
        ),
      ),
      backgroundColor: Color.fromARGB(250, 235, 255, 250),
      body: NestedScrollView(
        // controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(153, 0, 200, 151),
              title: Text('Prices'),
              pinned: true,
              floating: true,
              forceElevated: boxIsScrolled,
              bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: "Lab Tests",
                  ),
                  Tab(
                    text: "Body Scans",
                  ),
                  Tab(
                    // icon: Icon(Icons.home),
                    text: "Physiotherapy",
                  ),
                  // DropdownButton(items: , onChanged: ),
                  Tab(
                    text: "surgery",
                  )
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            LabTestPrices(),
            BodyScanPrices(),
            PhysiotherapyPrices(),
            surgery()
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
