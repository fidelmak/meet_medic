import 'package:flutter/material.dart';

import '../utils/const.dart';

class SearchText extends StatelessWidget {
  final String hint;
  final bool obscure;

  const SearchText({
    super.key,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 80,
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontSize: 24, color: textGrey),
            prefixIcon: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey[20],
              ),
              onPressed: () {},
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: whiteColor),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary5),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
