import 'package:flutter/material.dart';

import '../utils/const.dart';

class NewsCard extends StatelessWidget {
  final Image cardIcon;
  final Text cardText1;
  final Text cardText2;

  NewsCard({
    super.key,
    required this.cardIcon,
    required this.cardText1,
    required this.cardText2,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFFF3FAFF),
              child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(height: 80, width: 80, child: cardIcon)),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardText1,
                cardText2,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
