import 'package:flutter/material.dart';

import '../utils/const.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15.0, // Size of the icon
                  color: primaryColor,
                ),
              ),
            ),
            Center(
                child: Text(
              "Profile",
              style: TextStyle(color: priColor),
            )),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                shape: BoxShape.circle, // Shape of the container
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.email,
                  size: 30,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
        actions: [],
      ),
    );
  }
}
