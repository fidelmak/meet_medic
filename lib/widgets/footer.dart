import 'package:flutter/material.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:portfolio/utils/const.dart';

import '../screen/appointment_screen.dart';
import '../screen/home_screen.dart';
import '../screen/mobile_home.dart';
import '../screen/search_screen.dart';
import 'search_card.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Container(
      decoration: BoxDecoration(
          color: whiteColor, // Background color (optional)
          border: Border.all(
            color: whiteColor,
          ), // Border color and width
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55.0), // Top left corner radius
            topRight: Radius.circular(55.0), // Top right corner radius
          )),
      height: screenHeight * 0.12,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.grey,
                    )),
                Text('Home')
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchScreen()));
                    },
                    icon: Icon(Icons.search, color: Colors.grey)),
                Text('Search'),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentScreen()));
                    },
                    icon: Icon(Icons.article, color: Colors.grey)),
                Text('Appointment'),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MobileHome()),
                      );
                    },
                    icon: Icon(Icons.person, color: primaryColor)),
                Text('Profile'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
