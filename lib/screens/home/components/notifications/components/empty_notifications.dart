import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/assets.dart';
import '../../../../../core/colors.dart';

class EmptyNotifications extends StatelessWidget {
  const EmptyNotifications({super.key});

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
                  Text("Notification",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              Divider(
                height: 15.h,
                color: Colors.transparent,
              ),
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      Assets.notifications,
                    ),
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  const Text(
                    "No new notifications yet",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  Text(
                      "You will receive a notification if there is \n something on your account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColours.neutral500)),
                ],
              )
            ],
          ),
        ),
      ])),
    );
  }
}
