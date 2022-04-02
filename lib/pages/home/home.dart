import 'package:flutter/material.dart';
import 'package:japan_cars/helpers/appColors.dart';
import 'package:japan_cars/helpers/img.dart';
import 'package:japan_cars/pages/home/ads_carousel.dart';
import 'package:japan_cars/tabbar_pages/tabbar.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const HomePage({
    Key? key,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: jpCarsLogo,
        elevation: 0,
        backgroundColor: transclr,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      backgroundColor: jpTheme.withOpacity(1),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width * 0.5,
                    color: Colors.white.withOpacity(0.3),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          left: 10,
                          bottom: 10,
                          right: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Hey!! ",
                              style: TextStyle(
                                color: jpWhite,
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Welcome Back ",
                              style: TextStyle(
                                color: jpWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AdsCarousel(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Cars List",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: jpWhite),
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    widget.onButtonPressed;
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 35,
                    color: jpWhite,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
