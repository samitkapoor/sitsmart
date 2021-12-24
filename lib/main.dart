import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sitsmart/core/homescreen.dart';
import 'package:sitsmart/core/infoscreen.dart';

void main() {
  runApp(const SitSmart());
}

class SitSmart extends StatelessWidget {
  const SitSmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sitsmart',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        highlightColor: Colors.blueGrey,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontFamily: 'Magilio',
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1),
        ),
      ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
        GetPage(
            name: InformationScreen.routeName, page: () => InformationScreen())
      ],
    );
  }
}
