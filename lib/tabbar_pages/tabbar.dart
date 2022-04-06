// ignore_for_file: unused_local_variable, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:japan_cars/helpers/appColors.dart';
import 'package:japan_cars/helpers/img.dart';
import 'package:japan_cars/tabbar_pages/auction_list_page.dart';
import 'package:japan_cars/tabbar_pages/stock_list_page.dart';

class TabbarPage extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const TabbarPage({
    Key? key,
    required this.onButtonPressed,
  }) : super(key: key);
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    StockList(),
    AuctionList(),
  ];

  late TabController _controller;
  var currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        TabController(length: 2, vsync: this, initialIndex: currentIndex);
    _controller.addListener(() {
      print("index::${_controller.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // actions: [
        //   currentIndex == 0
        //       ? PopupMenuButton(
        //           onSelected: (value) {
        //             switch (value) {
        //               case 1:
        //             }
        //           },
        //           itemBuilder: (context) => [
        //                 PopupMenuItem(
        //                   child: Text("Select Make"),
        //                   value: 1,
        //                 ),
        //                 PopupMenuItem(
        //                   child: Text("Select Model"),
        //                   value: 2,
        //                 ),
        //                 PopupMenuItem(
        //                   child: Text("Select Year"),
        //                   value: 3,
        //                 ),
        //               ])
        //       : PopupMenuButton(
        //           itemBuilder: (context) => [
        //                 PopupMenuItem(
        //                   child: Text("Select Auction"),
        //                   value: 1,
        //                 ),
        //                 PopupMenuItem(
        //                   child: Text("Select Model"),
        //                   value: 2,
        //                 ),
        //                 PopupMenuItem(
        //                   child: Text("Select Year"),
        //                   value: 3,
        //                 ),
        //               ])
        // ],
        backgroundColor: transclr,
        leading: IconButton(
            onPressed: widget.onButtonPressed,
            icon: Icon(Icons.arrow_back_ios)),
        title: Container(
          height: 45,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  hintText: "Search here",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Icon(
                          Icons.sort,
                          //   IconlyLight.filter,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ),
        bottom: TabBar(
          tabs: const [
            Tab(
              text: "Stock List",
            ),
            Tab(
              text: "Auction List",
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: _controller,
        ),
      ),
      backgroundColor: jpTheme,
      body: Center(
          child: TabBarView(
        children: _tabs,
        controller: _controller,
      )),
    );
  }
}
