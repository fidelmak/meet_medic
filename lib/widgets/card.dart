import 'package:flutter/material.dart';

import '../utils/const.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Container(
                width: 100.0, // Width of the circle
                height: 100.0, // Height of the circle
                child: Image.asset(
                  "assets/images/userr.png",
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Liza Trass",
                  style: TextStyle(color: backgroundColor, fontSize: 25),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("123 45555",
                        style: TextStyle(color: backgroundColor, fontSize: 15))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("123 45555",
                        style: TextStyle(color: backgroundColor, fontSize: 15))
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  color: Color(0xFFF3FAFF),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.edit,
                      size: 20.0, // Size of the icon
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
