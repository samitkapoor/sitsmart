import 'package:flutter/material.dart';

import '/components/animatedsliverappbar.dart';

class InformationScreen extends StatelessWidget {
  InformationScreen({Key? key}) : super(key: key);
  static const routeName = "/sitsmart-info";

  TextStyle lightStyle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
    fontFamily: 'Product Sans',
  );

  TextStyle heavyStyle = const TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    fontFamily: 'Product Sans',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            ),
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const AnimatedSliverAppBar(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'sitsmart', style: heavyStyle),
                        TextSpan(
                            text:
                                ' is an application that is designed to remind you the',
                            style: lightStyle),
                        TextSpan(
                            text: ' importance of taking a break',
                            style: heavyStyle),
                        TextSpan(
                            text:
                                ' after every hour of sitting in front of your laptop. this application is made for those who spend most of their day in front of their laptop, computer or mobile screen and do not take frequent breaks. this application comes with a timer that you can start with just a single press and after the set limit, it will remind you to stand up and take a break for 10 minutes. ',
                            style: lightStyle),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
