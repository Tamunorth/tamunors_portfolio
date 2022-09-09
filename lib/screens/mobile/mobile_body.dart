import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tams_portfolio/_lib.dart';

class MobileBody extends StatefulWidget {
  MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final widgetsList = [
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsDropie1,
        Assets.pngsDropie2,
        Assets.pngsDropie3,
        Assets.pngsDropie4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsTx1,
        Assets.pngsTx2,
        Assets.pngsTx3,
        Assets.pngsTx4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsHollow1,
        Assets.pngsHollow2,
        Assets.pngsHollow3,
        Assets.pngsHollow4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsMedbury1,
        Assets.pngsMedbury2,
        Assets.pngsMedbury3,
        Assets.pngsMedbury4,
      ]),
    ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: ImageSlideShow(imageList: [
        Assets.pngsTitan1,
        Assets.pngsTitan2,
        Assets.pngsTitan3,
        Assets.pngsTitan4,
      ]),
    ),
  ];

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      if (scrollController.hasClients) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) =>
    //     scrollController.animateTo(scrollController.position.maxScrollExtent,
    //         duration: Duration(seconds: 3), curve: Curves.decelerate));

    return Scaffold(
      backgroundColor: Colors.black,
      endDrawer: Drawer(
        backgroundColor: Pallets.bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              margin: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x40FFF9EA),
                  Color(0x1AFFFFFF),
                ]),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xCCFFFFFF),
                ),
              ),
              child: AppBarText(
                text: 'Projects',
                url: AppStrings.githubReposUrl,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x40FFF9EA),
                  Color(0x1AFFFFFF),
                ]),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xCCFFFFFF),
                ),
              ),
              child: AppBarText(
                text: 'Github',
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x40FFF9EA),
                  Color(0x1AFFFFFF),
                ]),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xCCFFFFFF),
                ),
              ),
              child: AppBarText(
                text: 'Resume',
                url: AppStrings.resumeUrl,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VGap(height: window.physicalSize.height * 0.002),
            Container(
              padding: EdgeInsets.all(window.physicalSize.width * 0.02),
              margin: EdgeInsets.symmetric(
                  horizontal: window.physicalSize.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  VGap(height: window.physicalSize.height * 0.02),
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
                                fontSize: 40.0,
                                fontFamily: AppStrings.conthraxFont,
                              ),
                            ),
                            Container(
                              height: 10.0,
                              width: 50,
                              color: Pallets.accentColor,
                            ),
                          ],
                        ),
                        GradientText(
                          'Developer ',
                          gradient: Pallets.appGradient,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: AppStrings.conthraxFont,
                          ),
                        ),
                        VGap(height: window.physicalSize.height * 0.02),
                        Text(
                          AppStrings.description,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            Assets.pngsWave,
                            width: 250,
                          ),
                        ),
                        VGap(height: window.physicalSize.height * 0.02),
                        GradientButton(),
                        VGap(height: window.physicalSize.height * 0.02),
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
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FEATURED PROJECTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SvgPicture.asset(Assets.svgsDirection),
                ],
              ),
            ),
            VGap(height: window.physicalSize.height * 0.1),
            RepaintBoundary(
                child: CardSlides(scrollController: scrollController)),
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: AppStrings.conthraxFont,
                    ),
                  ),
                  Text(
                    AppStrings.aboutMe,
                    style: TextStyle(
                      fontSize: 14,
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
            GradientText(
              AppStrings.lookingForward,
              gradient: Pallets.appGradient,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontFamily: AppStrings.conthraxFont,
              ),
            ),
            VGap(height: window.physicalSize.height * 0.1),
            Padding(
              padding: EdgeInsets.all(window.physicalSize.width * 0.1),
              child: GradientButton(),
            ),
            VGap(height: window.physicalSize.height * 0.3),
          ],
        ),
      ),
    );
  }
}
