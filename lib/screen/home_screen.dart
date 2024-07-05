import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:portfolio/utils/const.dart';

import '../widgets/01_card.dart';
import '../widgets/02_card.dart';
import '../widgets/card.dart';
import '../widgets/footer.dart';
import '../widgets/icon_card.dart';
import '../widgets/news_card.dart';
import '../widgets/profile_nav.dart';
import '../widgets/searchText.dart';
import '../widgets/search_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
        bottomNavigationBar: BottomNav(),
        backgroundColor: bg,
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                  margin: EdgeInsets.all(1),
                  child: SearchText(
                    hint: "Search",
                    obscure: false,
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Nearest Visit",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
// card.....................................
              HomeCard(screenHeight: screenHeight, screenWidth: screenWidth),

//...............
//
//
//
//
//..................................

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Container(
                          width: screenWidth / 2.5,
                          child: ElevatedButton(
                            onPressed: () {
                              // Define the action when the button is pressed
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  whiteColor, // Navy blue background color
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 8.0),
                              elevation: 0, // Button padding
                              textStyle: TextStyle(
                                fontSize: 16.0, // Text size
                                fontWeight: FontWeight.bold, // Text weight
                              ),
                            ),
                            child: Text(
                              'Posts',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 24),
                            ),
                          ),
                        ),
                      ),

                      ////...................
                      ///
                      ///
                      ///
                      ///
                      ///
                      ///................
                      Center(
                        child: Container(
                          width: screenWidth / 2,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: primaryColor, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Define the action when the button is pressed
                              print('Follow button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .transparent, // Navy blue background color
                              padding: EdgeInsets.all(12), // Button padding
                              textStyle: TextStyle(
                                fontSize: 16.0, // Text size
                                fontWeight: FontWeight.bold, // Text weight
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Articles',
                              style: TextStyle(color: whiteColor, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///////.................
              ///
              ///

              Container(
                margin: EdgeInsets.all(8),
                child: NewsCard(
                  cardIcon: Image.asset(
                    "assets/images/cup.png",
                    fit: BoxFit.cover, // Ensure the image covers the container
                  ),
                  cardText1: Text("Cardiology and pregnancy?",
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  cardText2: Text(
                      " This article will look at this subject , \nProviding a brief overview of this subject ",
                      style: TextStyle(color: backgroundColor, fontSize: 12)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: NewsCard(
                  cardIcon: Image.asset(
                    "assets/images/hrt.png",
                    fit: BoxFit.cover, // Ensure the image covers the container
                  ),
                  cardText1: Text("Cardiology and pregnancy ?",
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  cardText2: Text(
                      " Although approximately 86% \nof practicing cardiologist surveyed see \npatients who are pregnant ever. ",
                      style: TextStyle(color: backgroundColor, fontSize: 12)),
                ),
              ),
            ],
          ),
        )));
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 2.6,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: whiteColor, // Background color
        borderRadius: BorderRadius.circular(30.0), // Circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Doctor Challoette ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Pediatrician",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 40,
                          height: 40,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.star),
                              onPressed: () {},
                              color: Colors.orange,
                              iconSize: 25, // Icon color
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "4.99 out of 5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular border radius
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(30.0), // Same border radius
                    child: Image.asset(
                      "assets/images/girl.png",
                      fit:
                          BoxFit.cover, // Ensure the image covers the container
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 204, 253, 255).withOpacity(0.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.calendar_month),
                        onPressed: () {},
                        color: primaryColor,
                        iconSize: 25, // Icon color
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Monday Dec, 13",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.alarm),
                        onPressed: () {},
                        color: primaryColor,
                        iconSize: 25, // Icon color
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "12:00-12:30",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: screenWidth / 3.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: primaryColor, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Define the action when the button is pressed
                        print('Follow button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.transparent, // Navy blue background color
                        padding: EdgeInsets.all(12), // Button padding
                        textStyle: TextStyle(
                          fontSize: 16.0, // Text size
                          fontWeight: FontWeight.bold, // Text weight
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Reshedule',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                //.............
                SizedBox(
                  width: 15,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: primaryColor, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    width: screenWidth / 2.5,
                    child: ElevatedButton(
                      onPressed: () {
                        // Define the action when the button is pressed
                        print('Follow button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            whiteColor, // Navy blue background color
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8.0),
                        elevation: 0, // Button padding
                        textStyle: TextStyle(
                          fontSize: 16.0, // Text size
                          fontWeight: FontWeight.bold, // Text weight
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ),
                ),

                //............
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
