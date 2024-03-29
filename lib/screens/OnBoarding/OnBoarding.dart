import 'package:amit_project/screens/OnBoarding/components/page1.dart';
import 'package:amit_project/screens/OnBoarding/components/page2.dart';
import 'package:amit_project/screens/OnBoarding/components/page3.dart';
import 'package:amit_project/screens/OnBoarding/provider/OnBoardingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class OnBoarding extends StatelessWidget {
  List<Widget> pages = [
    OnBoarding_page1(),
    OnBoarding_page2(),
    OnBoarding_page3(),
  ];

  OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView(
              controller:
                  context.read<OnBoardingProvider>().state.pagecontroller,
              children: pages),
        ),
      ],
    ));
  }
}
