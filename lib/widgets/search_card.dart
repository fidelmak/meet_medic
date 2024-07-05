import 'package:flutter/material.dart';
import 'package:portfolio/widgets/searchText.dart';

import '../utils/const.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 253, 255),
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), // Path to the image
            fit: BoxFit.fill, // Fit the image within the container
          ),
        ), // Height of the circle
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Search Insulin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "QUICKLY",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SearchText(
              hint: "search",
              obscure: false,
            ),
          ],
        ),
      ),
    );
  }
}
