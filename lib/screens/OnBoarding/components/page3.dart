import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_routes.dart';
import '../../../core/assets.dart';

// ignore: must_be_immutable
class OnBoarding_page3 extends StatelessWidget {
  OnBoarding_page3({super.key});
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              //! background image
              Container(
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.OnBoarding3),
                      fit: BoxFit.fitWidth),
                ),
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
                      text: "Get the best",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            text: " choice for the job",
                            style: TextStyle(color: AppColours.primary500)),
                        const TextSpan(text: " you've always dreamed of"),
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
                    "The better the skills you have, the greater the good job opportunities for you.",
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
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        App_Routes.login, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColours.primary500,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
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
