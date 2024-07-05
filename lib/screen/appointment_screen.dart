import 'package:flutter/material.dart';

import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:portfolio/screen/make_appoint.dart';
import 'package:portfolio/screen/see_all.dart';
import 'package:portfolio/utils/const.dart';

import '../widgets/01_card.dart';
import '../widgets/02_card.dart';
import '../widgets/card.dart';
import '../widgets/footer.dart';
import '../widgets/profile_nav.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
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
                child: Container(
                  height: screenHeight / 5,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: whiteColor),
                    color: whiteColor, // Background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular border radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    30.0), // Circular border radius
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    30.0), // Same border radius
                                child: Image.asset(
                                  "assets/images/girl.png",
                                  fit: BoxFit
                                      .cover, // Ensure the image covers the container
                                ),
                              ),
                            ),
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
                                        color: Colors.blue.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(Icons.people),
                                          onPressed: () {},
                                          color: primaryColor,
                                          iconSize: 25, // Icon color
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Patients",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          "345",
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ////////............................
              ///
              ///
              ///
              ///
              ///
              ///
              ///...................................

              Container(
                child: Container(
                  height: screenHeight / 5,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: whiteColor, // Background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular border radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "275",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Articles",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "234",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "123",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        width: screenWidth / 3,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                            padding: EdgeInsets.all(
                                                12), // Button padding
                                            textStyle: TextStyle(
                                              fontSize: 16.0, // Text size
                                              fontWeight: FontWeight
                                                  .bold, // Text weight
                                            ),
                                            elevation: 0,
                                          ),
                                          child: Text(
                                            'Follow',
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: primaryColor, // Border color
                                            width: 1.0, // Border width
                                          ),
                                        ),
                                        width: screenWidth / 3,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Define the action when the button is pressed
                                            print('Follow button pressed');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                whiteColor, // Navy blue background color
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.0,
                                                vertical: 8.0),
                                            elevation: 0, // Button padding
                                            textStyle: TextStyle(
                                              fontSize: 16.0, // Text size
                                              fontWeight: FontWeight
                                                  .bold, // Text weight
                                            ),
                                          ),
                                          child: Text(
                                            'Messages',
                                            style:
                                                TextStyle(color: primaryColor),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //............
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ////////
              ///
              ///
              ///
              ///
              ////////

              Container(
                child: Container(
                  height: screenHeight / 2.5,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: whiteColor, // Background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular border radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                ),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SeeAll()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          primaryColor, // Background color
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // To ensure the button size matches the content
                                      children: [
                                        Text(
                                          "See all",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15), // Text color
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Space between text and icon
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 10.0, // Size of the icon
                                          color: Colors.white, // Icon color
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            //////////
                            ///
                            ///
                            ///
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //////
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: bg,
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child: Center(
                                          child: IconButton(
                                            icon: Icon(Icons.question_mark),
                                            onPressed: () {},
                                            color: Colors.black87,
                                            iconSize: 25, // Icon color
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      )
                                    ],
                                  ),

                                  //////
                                  // Column(
                                  //   children: [
                                  //     ClipOval(
                                  //       child: Container(
                                  //         width: 35,
                                  //         height: 35,
                                  //         decoration: BoxDecoration(
                                  //           color: Colors.grey.withOpacity(0.1),
                                  //           borderRadius:
                                  //               BorderRadius.circular(30.0),
                                  //         ),
                                  //         child: IconButton(
                                  //           icon: Icon(Icons.question_mark),
                                  //           onPressed: () {},
                                  //           color: Colors.black87,
                                  //           iconSize: 25, // Icon color
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 50,
                                  //     )
                                  //   ],
                                  // ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Anonymous feedback",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 230,
                                        child: Text(
                                          "Very competent specialist. I am very happy that there are such professional doctors. My baby is in safe hands. My child's health is above all",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //////
                            ///
                            ///
                            ///
                            ///

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              30.0), // Same border radius
                                          child: Image.asset(
                                            "assets/images/erica.png",
                                            fit: BoxFit
                                                .cover, // Ensure the image covers the container
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Erika Lhee",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 230,
                                        child: Text(
                                          "Just a wonderful doctor, very happy that she is leading our child, competent, very smart, nice.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )

//////////
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //////
              ///
              ///
              ///
              ///
              ///
              ///
              ///////

              MakeAppoint(screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )));
  }
}

class MakeAppoint extends StatelessWidget {
  const MakeAppoint({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: screenWidth * 0.95,
      height: screenHeight * 0.08,
      child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MakeAppT()));
              },
              child: Text(
                "Make an appointment",
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 21),
              ))),
    );
  }
}
