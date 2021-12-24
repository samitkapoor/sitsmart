import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/models/timermodel.dart';

class TimerCard extends StatelessWidget {
  double value = 0;

  TimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimerModel>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.9),
            elevation: 10,
            child: InkWell(
              onTap: () {},
              splashColor: const Color(0xff44B6D7),
              highlightColor: const Color(0xff44B6D7),
              borderRadius: BorderRadius.circular(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height * 0.35) * 0.6,
                    width: (MediaQuery.of(context).size.height * 0.35) * 0.6,
                    child: CircularProgressIndicator(
                      value: controller.getValue(),
                      backgroundColor: Colors.blue[500],
                      color: Colors.blue[100],
                      strokeWidth: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Builder(builder: (context) {
                    String seconds = (controller.seconds.value < 10)
                        ? "0${controller.seconds}"
                        : "${controller.seconds}";
                    String minutes = (controller.minutes.value < 10)
                        ? "0${controller.minutes}"
                        : "${controller.minutes}";
                    String hours = (controller.hour.value < 10)
                        ? "0${controller.hour}"
                        : "${controller.hour}";
                    return Text(
                      '$hours:$minutes:$seconds',
                      style: const TextStyle(
                        fontSize: 45,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
