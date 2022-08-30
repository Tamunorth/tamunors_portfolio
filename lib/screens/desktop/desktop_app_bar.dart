import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tams_portfolio/_lib.dart';

class DesktopAPpBar extends StatelessWidget {
  const DesktopAPpBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = window.physicalSize.width < 600;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: window.physicalSize.width * 0.05),
      height: isMobile ? 70.0 : 100.0,
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
                  height: 30.0,
                  child: SvgPicture.asset(
                    Assets.svgsTamLogo,
                  ),
                )
              : SvgPicture.asset(Assets.svgsTamLogo),
          isMobile
              ? Icon(
                  Icons.menu,
                  size: 25,
                  color: Colors.white,
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
