import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/assets.dart';

class RejectedJob extends StatefulWidget {
  const RejectedJob({super.key});

  @override
  State<RejectedJob> createState() => _RejectedJobState();
}

class _RejectedJobState extends State<RejectedJob> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              height: 12.h,
              color: Colors.transparent,
            ),
            Image.asset(Assets.reject),
            Divider(
              height: 2.h,
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "No applications were rejected",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.transparent,
                    ),
                    Text(
                      "If there is an application that is rejected by the\n company it will appear here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColours.neutral500,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
