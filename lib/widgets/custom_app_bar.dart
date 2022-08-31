import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tams_portfolio/_lib.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: window.physicalSize.width * 0.02),
      height: isMobile ? 50.0 : 100.0,
      decoration: BoxDecoration(
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
          isMobile
              ? SizedBox(
                  height: 20.0,
                  child: SvgPicture.asset(
                    Assets.svgsTamLogo,
                  ),
                )
              : SvgPicture.asset(Assets.svgsTamLogo),
          isMobile
              ? GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    size: 25,
                    color: Colors.white,
                  ),
                )
              : SizedBox(
                  width: 300.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      AppBarText(
                        text: 'Projects',
                        url: AppStrings.githubReposUrl,
                      ),
                      AppBarText(
                        text: 'Github',
                      ),
                      AppBarText(
                        text: 'Resume',
                        url: AppStrings.resumeUrl,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
