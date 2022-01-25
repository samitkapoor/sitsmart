import 'dart:async';

import 'package:get/get.dart';

import 'package:sitsmart/components/completedialog.dart';
import 'package:sitsmart/controller/musiccontroller.dart';

enum TimerState { play, pause }

class TimerModel extends GetxController {
  int limit = 3000;
  RxInt secondsPassBy = 0.obs;
  RxInt hour = 0.obs;
  RxInt minutes = 50.obs;
  RxInt seconds = 0.obs;
  TimerState state = TimerState.pause;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      if (secondsPassBy.value == limit) {
        state = TimerState.pause;
        stopTimer();
        update();
      } else {
        seconds.value = seconds.value - 1;
        if (seconds.value == -1) {
          minutes.value = minutes.value - 1;
          if (minutes.value == -1) {
            hour.value = hour.value - 1;
            minutes.value = 59;
          }
          seconds.value = 59;
        }
        secondsPassBy++;
        update();
      }
    });
  }

  void stopTimer() {
    if (secondsPassBy.value == limit) {
      var musicController = Get.find<MusicController>();
      musicController.playMusic();
      Get.dialog(
        dialogWidget(),
      );
    }
    secondsPassBy.value = 0;
    hour.value = 0;
    minutes.value = 50;
    seconds.value = 0;
    state = TimerState.pause;
    timer?.cancel();
  }

  double getValue() {
    return (((minutes.value * 60) + seconds.value) / limit);
  }

  void changeTimerState() {
    if (state == TimerState.play) {
      state = TimerState.pause;
      update();
    } else {
      state = TimerState.play;
      update();
    }
  }
}
