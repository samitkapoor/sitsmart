import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitsmart/controller/musiccontroller.dart';

closeDialog() {
  var musicController = Get.find<MusicController>();
  musicController.stopMusic();
  Get.close(1);
}

Widget dialogWidget() {
  return WillPopScope(
    onWillPop: () {
      closeDialog();
      return Future.value();
    },
    child: Container(
      height: Get.height,
      width: Get.width,
      color: Colors.transparent,
      child: Center(
        child: Material(
          elevation: 5,
          child: Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xff9fd6e3),
              border: Border.all(color: Colors.black, width: 10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                children: [
                  const Text(
                    'Good work, now, go and take a break!',
                    style: TextStyle(fontFamily: 'ProductSans', fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      closeDialog();
                    },
                    child: const Text(
                      'Let\'s go!',
                      style: TextStyle(fontFamily: 'ProductSans', fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
