import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tams_portfolio/screens/dashboard.dart';
import 'package:tams_portfolio/utils/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) => MaterialApp(
        title: 'Tamunors\' Portfolio',
        theme: ThemeData(fontFamily: AppStrings.openSansFont),
        home: const DashboardScreen(),
      ),
    );
  }
}
