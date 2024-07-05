import 'package:flutter/material.dart';

import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:portfolio/utils/const.dart';

import '../widgets/01_card.dart';
import '../widgets/02_card.dart';
import '../widgets/card.dart';
import '../widgets/footer.dart';
import '../widgets/profile_nav.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
        bottomNavigationBar: BottomNav(),
        backgroundColor: bg,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: ProfileNav(screenWidth: screenWidth),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                  child: UserCard()),
              Container(
                margin: EdgeInsets.all(24),
                child: TextCard1(
                  cardIcon: Icon(
                    Icons.book,
                    size: 20.0, // Size of the icon
                    color: primaryColor,
                  ),
                  cardText1: Text(
                    "Medical History",
                    style: TextStyle(color: backgroundColor, fontSize: 16),
                  ),
                  cardText2: Text("Check all Your Medical History ",
                      style: TextStyle(color: backgroundColor, fontSize: 14)),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(24),
                  child: TextCard1(
                    cardIcon: Icon(
                      Icons.camera_front_outlined,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    cardText1: Text(
                      "Lina's History",
                      style: TextStyle(color: backgroundColor, fontSize: 16),
                    ),
                    cardText2: Text(
                        "Receive and save up, pointd to receive gift ",
                        style: TextStyle(color: backgroundColor, fontSize: 14)),
                  )),
              Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                  child: TextCard2(
                    cardIcon: Icon(
                      Icons.camera_front_outlined,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    cardText1: Text("Medicine & Supplements ",
                        style: TextStyle(color: backgroundColor, fontSize: 14)),
                  )),
              Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                  child: TextCard2(
                    cardIcon: Icon(
                      Icons.home_filled,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    cardText1: Text("Personal Information ",
                        style: TextStyle(color: backgroundColor, fontSize: 14)),
                  )),
              Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                  child: TextCard2(
                    cardIcon: Icon(
                      Icons.settings,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    cardText1: Text("Profile Settings  ",
                        style: TextStyle(color: backgroundColor, fontSize: 14)),
                  )),
            ],
          ),
        )));
  }
}
