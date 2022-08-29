import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tams_portfolio/generated/assets.dart';
import 'package:tams_portfolio/utils/AppStrings.dart';
import 'package:tams_portfolio/utils/pallets.dart';
import 'package:tams_portfolio/widgets/gap.dart';
import 'package:tams_portfolio/widgets/gradient_button.dart';
import 'package:tams_portfolio/widgets/gradient_text.dart';
import 'package:tams_portfolio/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        mobile: Scaffold(
          backgroundColor: Pallets.bgColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                VGap(height: window.physicalSize.height * 0.05),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: window.physicalSize.width * 0.05),
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(colors: [
                      Color(0x40FFF9EA),
                      Color(0x1AFFFFFF),
                    ]),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Color(0xCCFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        desktop: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                VGap(height: window.physicalSize.height * 0.1),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: window.physicalSize.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DesktopAPpBar(),
                      VGap(height: window.physicalSize.height * 0.05),
                      Container(
                        width: window.physicalSize.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GradientText(
                                  'Mobile ',
                                  gradient: Pallets.appGradient,
                                  style: TextStyle(
                                    fontSize: 100.0,
                                    fontFamily: AppStrings.conthraxFont,
                                  ),
                                ),
                                window.physicalSize.width > 1000
                                    ? Container(
                                        height: 23.0,
                                        color: Pallets.accentColor,
                                        width: 400)
                                    : Expanded(
                                        child: Container(
                                          height: 23.0,
                                          color: Pallets.accentColor,
                                        ),
                                      ),
                              ],
                            ),
                            const GradientText(
                              'Developer ',
                              gradient: Pallets.appGradient,
                              style: TextStyle(
                                fontSize: 100.0,
                                fontFamily: AppStrings.conthraxFont,
                              ),
                            ),
                            VGap(height: window.physicalSize.height * 0.027),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    AppStrings.description,
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  Assets.pngsWave,
                                  width: 300,
                                ),
                              ],
                            ),
                            VGap(height: window.physicalSize.height * 0.05),
                            GradientButton(),
                            VGap(height: window.physicalSize.height * 0.08),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100.0),
                  child: Divider(
                    color: Color(0xCCFFFFFF),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FEATURED PROJECTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(Assets.svgsDirection),
                  ],
                ),
                Container(
                  height: 400.0,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 100.0,
                      horizontal: window.physicalSize.width * 0.05),
                  padding:
                      EdgeInsets.symmetric(vertical: 60.0, horizontal: 50.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x40FFF9EA),
                          Color(0x1AFFFFFF),
                        ]),
                    border: Border.all(color: Colors.white.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: AppStrings.conthraxFont,
                        ),
                      ),
                      Text(
                        AppStrings.aboutMe,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      VGap(height: window.physicalSize.height * 0.05),
                      GradientButton(),
                    ],
                  ),
                ),
                VGap(height: window.physicalSize.height * 0.1),
                const GradientText(
                  AppStrings.lookingForward,
                  gradient: Pallets.appGradient,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: AppStrings.conthraxFont,
                  ),
                ),
                VGap(height: window.physicalSize.height * 0.1),
                GradientButton(),
                VGap(height: window.physicalSize.height * 0.3),
              ],
            ),
          ),
        ));
  }
}

class DesktopAPpBar extends StatelessWidget {
  const DesktopAPpBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(colors: [
          Color(0x40FFF9EA),
          Color(0x1AFFFFFF),
        ]),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xCCFFFFFF),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(Assets.svgsTamLogo),
          SizedBox(
            width: 300.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                AppBarText(
                  text: 'Projects',
                ),
                AppBarText(
                  text: 'Github',
                ),
                AppBarText(
                  text: 'Resume',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({
    Key? key,
    required this.text,
    this.url = 'https://github.com/Tamunorth',
  }) : super(key: key);

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
