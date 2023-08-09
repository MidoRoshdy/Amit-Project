import 'package:amit_project/core/colors.dart';
import 'package:amit_project/screens/OnBoarding/provider/OnBoardingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_routes.dart';
import '../../../core/assets.dart';

// ignore: must_be_immutable
class OnBoarding_page2 extends StatelessWidget {
  OnBoarding_page2({super.key});
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                //! background image
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.OnBoarding2),
                        fit: BoxFit.fitWidth)),
              ),
              Divider(
                color: Colors.transparent,
                height: 4.h,
              ),
              //! big text
              Container(
                alignment: Alignment.center,
                width: 90.w,
                height: 18.h,
                child: Text.rich(
                  softWrap: true,
                  TextSpan(
                      text: "Hundreds of jobs are waiting for you to ",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            text: "join together",
                            style: TextStyle(color: AppColours.primary500)),
                      ]),
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: 1.5.h,
              ),
              //! small text
              Container(
                alignment: Alignment.center,
                width: 90.w,
                child: Text(
                    "Immediately join us and start applying for the job you are interested in.",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColours.neutral500)),
              ),
              Divider(
                color: Colors.transparent,
                height: 4.h,
              ),
              //! selected page
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1.8.w,
                    height: 1.8.w,
                    decoration: BoxDecoration(
                        color: AppColours.primary200,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 1.2.w,
                  ),
                  Container(
                    width: 2.5.w,
                    height: 2.5.w,
                    decoration: BoxDecoration(
                        color: AppColours.primary500,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 1.2.w,
                  ),
                  Container(
                    width: 1.8.w,
                    height: 1.8.w,
                    decoration: BoxDecoration(
                        color: AppColours.primary200,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              Divider(
                color: Colors.transparent,
                height: 5.h,
              ),
              //! button
              SizedBox(
                width: 90.w,
                height: 6.h,
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<OnBoardingProvider>()
                        .state
                        .pagecontroller
                        .nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColours.primary500,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          //! app logo
          Positioned(
              top: 6.5.h,
              left: 5.w,
              child: Image.asset(
                Assets.MediumLogo1x,
              )),
          //! skip button
          Positioned(
              top: 6.5.h,
              right: 5.w,
              child: InkWell(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: AppColours.neutral500,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      App_Routes.login, (route) => false)))
        ],
      ),
    );
  }
}
