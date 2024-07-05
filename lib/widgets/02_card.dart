import 'package:flutter/material.dart';

import '../utils/const.dart';

class TextCard2 extends StatelessWidget {
  final Icon cardIcon;
  final Text cardText1;

  TextCard2({
    super.key,
    required this.cardIcon,
    required this.cardText1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor, // Background color
        borderRadius: BorderRadius.circular(30.0), // Circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
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
                  width: 15,
                ),
                cardText1,
              ],
            ),
            Container(
              child: Row(
                // To ensure the button size matches the content
                children: [
                  SizedBox(width: 5), // Space between text and icon
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.0, // Size of the icon
                    color: primaryColor, // Icon color
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
