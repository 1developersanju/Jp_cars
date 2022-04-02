import 'package:flutter/material.dart';
import 'package:japan_cars/pages/home/home.dart';
import 'package:japan_cars/tabbar_pages/tabbar.dart';

class PgView extends StatefulWidget {
  @override
  _PgViewState createState() => _PgViewState();
}

class _PgViewState extends State<PgView> {
  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(
          onButtonPressed: () => pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
        TabbarPage(
          onButtonPressed: () => pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
    );
  }
}
