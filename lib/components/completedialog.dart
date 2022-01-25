import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget dialogWidget() {
  return Container(
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
                  onPressed: () {
                    Get.close(1);
                  },
                  child: const Text(
                    'Let\'s go!',
                    style: TextStyle(fontFamily: 'ProductSans', fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
