import 'package:flutter/material.dart';

import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:portfolio/screen/see_all.dart';
import 'package:portfolio/utils/const.dart';

import '../widgets/01_card.dart';
import '../widgets/02_card.dart';
import '../widgets/card.dart';
import '../widgets/footer.dart';
import '../widgets/profile_nav.dart';
import 'home_screen.dart';

class MakeAppT extends StatefulWidget {
  const MakeAppT({super.key});

  @override
  State<MakeAppT> createState() => _MakeAppTState();
}

class _MakeAppTState extends State<MakeAppT> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNav(),
        backgroundColor: bg,
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "April, 06 2022",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    width: screenWidth / 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor, // Background color
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // To ensure the button size matches the content
                        children: [
                          Icon(
                            Icons.add,
                            size: 10.0, // Size of the icon
                            color: Colors.white, // Icon color
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15), // Text color
                          ),
                          // Space between text and icon
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reminder ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Dont forget schedule for upcoming appointment",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              HomeCard(screenHeight: screenHeight, screenWidth: screenWidth),
            ],
          ),
        )),
      ),
    );
  }
}
