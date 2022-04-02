import 'package:flutter/material.dart';

class Parent extends StatefulWidget {
  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parent> {
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
        FirstWidget(
          onButtonPressed: () => pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
        SecondWidget(
          onButtonPressed: () => pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        )
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

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: buildPageView(),
    );
  }
}

class FirstWidget extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const FirstWidget({required this.onButtonPressed});

  @override
  _FirstWidgetState createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: FlatButton(
          onPressed: widget.onButtonPressed,
          child: const Text('Go to second page'),
        ),
      ),
    );
  }
}

class SecondWidget extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const SecondWidget({Key? key, required this.onButtonPressed})
      : super(key: key);

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: FlatButton(
        onPressed: widget.onButtonPressed,
        child: const Text('Go to second page'),
      ),
    );
  }
}
