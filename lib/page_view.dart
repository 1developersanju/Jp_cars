import 'package:flutter/material.dart';
import 'package:japan_cars/pages/home/home.dart';
import 'package:japan_cars/tabbar_pages/tabbar.dart';

class PgView extends StatefulWidget {
  const PgView({Key? key}) : super(key: key);

  @override
  State<PgView> createState() => _PgViewState();
}

class _PgViewState extends State<PgView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int bottomSelectedIndex = 0;

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(
          onButtonPressed: () => _pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
        TabbarPage(
          onButtonPressed: () => _pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        )
      ],
    );
  }

  void onAddButtonTapped(int index) {
    // use this to animate to the page

    // or this to jump to it without animating
    _pageController.jumpToPage(index);
  }
}
