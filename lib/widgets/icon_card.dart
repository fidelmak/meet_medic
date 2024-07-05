import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  // Function to handle button presses

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(1.0), // Padding around the container
            color: Colors.transparent, // Background color of the main container
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              // First IconButton with transparent red background
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), // Border radius
                  color: Colors.red
                      .withOpacity(0.2), // Transparent green background
                ),
                // Transparent red background
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {},
                      color: Colors.red,
                      iconSize: 30, // Icon color
                    ),
                    Text(
                      "Doctors",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(width: 16.0), // Vertical space between buttons
              // Second IconButton with transparent blue background
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), // Border radius
                  color: Colors.blue
                      .withOpacity(0.5), // Transparent green background
                ),
                // Transparent blue background
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.vaccines),
                      onPressed: () {},
                      color: Colors.blue,
                      iconSize: 30, // Icon color
                    ),
                    Text(
                      "Pharmacy",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(width: 16.0), // Vertical space between buttons
              // Third IconButton with transparent green background
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), // Border radius
                  color: Colors.green
                      .withOpacity(0.5), // Transparent green background
                ),
                //
                // Transparent green background
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.local_hospital_rounded),
                      onPressed: () {},
                      color: Colors.green,
                      iconSize: 30, // Icon color
                    ),
                    Text(
                      "Hospital",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ])));
  }
}
