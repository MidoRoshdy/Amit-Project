import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ActiveJob extends StatefulWidget {
  const ActiveJob({super.key});

  @override
  State<ActiveJob> createState() => _ActiveJobState();
}

class _ActiveJobState extends State<ActiveJob> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 90.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Job Description",
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500)),
            Divider(
              color: Colors.transparent,
              height: 1.h,
            ),
            Divider(
              color: Colors.transparent,
              height: 15.h,
            ),
          ],
        ));
  }
}
