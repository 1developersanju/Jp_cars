import 'package:flutter/material.dart';
import 'package:japan_cars/helpers/appColors.dart';

class StockList extends StatelessWidget {
  const StockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: jpTheme,
      body: Center(
        child: Container(
          // height: size.height * 0.6,
          // color: Colors.white,
        ),
      ),
    );
  }
}
