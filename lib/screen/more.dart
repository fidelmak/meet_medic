import 'package:flutter/material.dart';
import 'package:portfolio/utils/const.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: whiteColor, // Background color
        borderRadius: BorderRadius.circular(30.0), // Circular border radius
      ),
      //color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Education",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 230,
              child: Text(
                "Engaged in the effective treatment of disability, depression, chronic fatigue syndrome, fears, anxiety, apathy and lethargy, sleep disorders, schizophrenia, mental disorders in the elderly and senile. Also, conducts a reception in English",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Location",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: screenHeight * 0.3,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(30.0), // Circular border radius
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // Same border radius
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
