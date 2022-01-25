import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/components/animatedsitsmartappbar.dart';
import '/components/timer.dart';

import '../controller/timercontroller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home-screen';
  var controller = Get.find<TimerModel>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        body: Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SitSmartAppBar(),
              SliverToBoxAdapter(
                child: TimerCard(),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xffbacfe0).withOpacity(0.6),
                const Color(0xffe9dbd8).withOpacity(0.7),
              ],
            ),
          ),
          child: GetBuilder<TimerModel>(builder: (controller) {
            return FloatingActionButton(
              onPressed: () {
                controller.changeTimerState();
                if (controller.state == TimerState.play) {
                  controller.startTimer();
                } else {
                  controller.stopTimer();
                }
              },
              child: Icon(
                  controller.state == TimerState.pause
                      ? Icons.play_arrow_rounded
                      : Icons.stop_rounded,
                  color: Colors.black,
                  size: 55),
              tooltip: controller.state == TimerState.pause ? 'play' : 'pause',
              backgroundColor: Colors.transparent,
              focusColor: Colors.transparent,
              elevation: 0,
            );
          }),
        ),
      ),
    );
  }
}
