import 'package:flutter/material.dart';

import '../utils/const.dart';

class TextCard1 extends StatelessWidget {
  final Icon cardIcon;
  final Text cardText1;
  final Text cardText2;
  TextCard1(
      {super.key,
      required this.cardIcon,
      required this.cardText1,
      required this.cardText2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor, // Background color
        borderRadius: BorderRadius.circular(30.0), // Circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      color: Color(0xFFF3FAFF),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0), child: cardIcon),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    cardText1,
                  ],
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor, // Background color
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // To ensure the button size matches the content
                      children: [
                        Text(
                          "Read",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15), // Text color
                        ),
                        SizedBox(width: 5), // Space between text and icon
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
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                cardText2,
              ],
            )
          ],
        ),
      ),
    );
  }
}
