// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:japan_cars/helpers/appColors.dart';
import 'package:japan_cars/page_view.dart';
import 'package:japan_cars/pages/home/ads_carousel.dart';
import 'package:japan_cars/pages/home/home.dart';
import 'package:japan_cars/pages/send_mail.dart';

class BtmBar extends StatefulWidget {
  BtmBar({Key? key}) : super(key: key);

  @override
  _BtmBarState createState() => _BtmBarState();
}

class _BtmBarState extends State<BtmBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
        actionButton: CurvedActionBar(
            onTab: (value) {
              /// perform action here
              print("sdc$value");
            },
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.mail_outline,
                size: 50,
                color: Colors.orange,
              ),
            ),
            inActiveIcon: Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
              child: Icon(
                Icons.mail,
                size: 50,
                color: Colors.orange,
              ),
            ),
            text: "Contact"),
        navBarBackgroundColor: jpWhite,
        inActiveColor: Colors.black45,
        appBarItems: [
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.home,
                color: jpTheme,
              ),
              inActiveIcon: Icon(
                Icons.home_filled,
                color: Colors.black26,
              ),
              text: 'Home'),
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.wallet_giftcard,
                color: jpTheme,
              ),
              inActiveIcon: Icon(
                Icons.assistant_photo_rounded,
                color: Colors.black26,
              ),
              text: 'Willings'),
        ],
        bodyItems: [
          PgView(),
          Container(
            color: Colors.amber,
          )
        ],
        actionBarView: EmailSender());
  }
}
