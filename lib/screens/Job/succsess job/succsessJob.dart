import 'package:amit_project/core/assets.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_routes.dart';

class SuccsessJob extends StatelessWidget {
  const SuccsessJob({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Iconsax.arrow_left4)),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text("Apply Job",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              Divider(
                height: 10.h,
                color: Colors.transparent,
              ),
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      Assets.succsessjob,
                      scale: 0.2.h,
                    ),
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  const Text(
                    "Your data has been \n successfully sent",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  Text(
                      "You will get a message from our team, about\n Sthe announcement of employee acceptance",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColours.neutral500)),
                  Divider(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: 90.w,
                    height: 7.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            App_Routes.home, (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColours.primary500,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ])),
    );
  }
}
