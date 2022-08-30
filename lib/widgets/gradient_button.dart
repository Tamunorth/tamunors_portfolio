import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = window.physicalSize.width < 600;

    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('mailto:daviesmanuelfavour@gmail.com'));
      },
      child: Container(
        height: 60.0,
        width: isMobile ? null : 240.0,
        child: Center(
          child: Text(
            'Contact Me',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF8EDDD8),
                Color(0xFFFFC163),
              ]),
        ),
      ),
    );
  }
}
