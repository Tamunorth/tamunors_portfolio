import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tams_portfolio/_lib.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mobile/mobile_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(mobile: MobileBody(), desktop: DesktopBody());
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({
    Key? key,
    required this.text,
    this.url = AppStrings.githubUrl,
  }) : super(key: key);

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    bool isMobile = window.physicalSize.width < 700;

    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: Padding(
        padding: isMobile ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 12.0 : 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
