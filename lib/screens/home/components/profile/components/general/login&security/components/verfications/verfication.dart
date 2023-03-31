import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class TwoStepVerficaton extends StatefulWidget {
  const TwoStepVerficaton({super.key});

  @override
  State<TwoStepVerficaton> createState() => _TwoStepVerficatonState();
}

class _TwoStepVerficatonState extends State<TwoStepVerficaton> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Column(
                children: [
                  Divider(
                    height: 1.h,
                    color: Colors.transparent,
                  ),
                  //header
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Iconsax.arrow_left4)),
                      SizedBox(
                        width: 13.w,
                      ),
                      Text("Two-step verification",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      padding: EdgeInsets.all(1.w),
                      margin: EdgeInsets.only(bottom: 2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColours.neutral300,
                            width: 1.sp,
                          )),
                      height: 13.h,
                      width: 90.w,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Secure your account with\n two-step verification",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColours.neutral400),
                            ),
                            FlutterSwitch(
                              width: 17.w,
                              height: 4.h,
                              valueFontSize: 25.0,
                              toggleSize: 25.0,
                              value: status,
                              borderRadius: 30.0,
                              padding: 4.0,
                              showOnOff: false,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: 10.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColours.primary200,
                          radius: 23.sp,
                          child: Icon(
                            Iconsax.lock,
                            size: 25.sp,
                            color: AppColours.primary600,
                          ),
                        ),
                        Text(
                          "Two-step verification provides additional\n security by asking for a verification code\n every time you log in on another device.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColours.neutral500),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: 10.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColours.primary200,
                          radius: 23.sp,
                          child: Icon(
                            Iconsax.external_drive,
                            size: 25.sp,
                            color: AppColours.primary600,
                          ),
                        ),
                        Text(
                          "Adding a phone number or using an\n authenticator will help keep your account\n safe from harm.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColours.neutral500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: SizedBox(
                width: 90.w,
                height: 7.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(App_Routes.veri_page2);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: AppColours.primary600),
                  child: Text(
                    "Next",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
