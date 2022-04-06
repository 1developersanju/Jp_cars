import 'package:flutter/material.dart';
import 'package:japan_cars/helpers/appColors.dart';
import 'package:japan_cars/helpers/img.dart';
import 'package:japan_cars/pages/home/ads_carousel.dart';
import 'package:japan_cars/pages/home/cars_list.dart';
import 'package:japan_cars/profile/profilePage.dart';
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
        actions: [IconButton(onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  ProfilePage()),
  );}, icon: Icon(Icons.person))],
      ),
      backgroundColor: jpTheme.withOpacity(1),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: size.height * 0.1,
                        width: size.height * 0.25,
                        color: Colors.white.withOpacity(0.3),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(
                              12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hey!! ",
                                  style: TextStyle(
                                    color: jpWhite,
                                    fontSize: size.height * 0.02,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Welcome Back ",
                                  style: TextStyle(
                                    color: jpWhite,
                                    fontSize: size.height * 0.02,
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
                      onPressed: widget.onButtonPressed,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 35,
                        color: jpWhite,
                      ))
                ],
              ),
              const CarList(),
            ],
          ),
        ),
      ),
    );
  }
}
