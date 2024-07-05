import 'package:flutter/material.dart';

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
import '../widgets/search_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.all(8),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 253, 255),
                        border: Border.all(
                          color: primaryColor, // Border color
                          width: 2.0, // Border width
                        ), // Background color
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        // Circular border radius
                      ),
                      height: screenHeight / 2.5,
                      width: screenWidth,
                      child: SearchCard())),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Your Symtoms",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white, // Border color
                          width: 2.0, // Border width
                        ), // Background color
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        // Circular border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/a.png",
                                fit: BoxFit
                                    .cover, // Ensure the image covers the container
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Headache",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white, // Border color
                          width: 2.0, // Border width
                        ), // Background color
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        // Circular border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/c.png",
                                fit: BoxFit
                                    .cover, // Ensure the image covers the container
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Nausea",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "New Investigations ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: NewsCard(
                  cardIcon: Image.asset(
                    "assets/images/cup.png",
                    fit: BoxFit.cover, // Ensure the image covers the container
                  ),
                  cardText1: Text("What is the replicable Crisis?",
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
              Container(
                margin: EdgeInsets.all(8),
                child: NewsCard(
                  cardIcon: Image.asset(
                    "assets/images/bottle.png",
                    fit: BoxFit.cover, // Ensure the image covers the container
                  ),
                  cardText1: Text("What is the replicable Crisis?",
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  cardText2: Text(
                      " This article will look at this subject , \nProviding a brief overview of this subject ",
                      style: TextStyle(color: backgroundColor, fontSize: 12)),
                ),
              ),
            ],
          ),
        )));
  }
}
