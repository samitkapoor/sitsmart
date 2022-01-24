import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sitsmart/core/homescreen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Timer? timer;
  int seconds = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds++;
      if (seconds == 1) {
        Get.offAllNamed(HomeScreen.routeName);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/loading.json'),
      ),
    );
  }
}
