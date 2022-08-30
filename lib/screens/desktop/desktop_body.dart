import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tams_portfolio/_lib.dart';

class DesktopBody extends StatelessWidget {
  DesktopBody({
    Key? key,
  }) : super(key: key);

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  CustomAppBar(),
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
            GestureDetector(
              onTap: () {
                // scrollController.animateTo(
                //     scrollController.position.maxScrollExtent,
                //     curve: Curves.ease,
                //     duration: Duration(seconds: 1));
              },
              child: Row(
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
            ),
            VGap(height: window.physicalSize.height * 0.1),
            CardSlides(scrollController: scrollController),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: 100.0,
                  horizontal: window.physicalSize.width * 0.05),
              padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 50.0),
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
    );
  }
}
