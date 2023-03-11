import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(children: [
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
            const Divider(
              height: 2,
              color: Colors.transparent,
            ),
            ////////////////////////////////////////////////new list //////////////////////////////////////////
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.grey[300],
              height: 4.h,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              width: 100.w,
              height: 40.h,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(3.w),
                      height: 10.h,
                      child: Row(children: [
                        Column(
                          children: [
                            Image.asset(Assets.TwitterLogo),
                          ],
                        ),
                        VerticalDivider(
                          width: 4.w,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Dana "),
                            Divider(
                              height: 2.h,
                            ),
                            const Text("Posted new design jobs")
                          ],
                        ),
                        VerticalDivider(
                          width: 24.w,
                          color: Colors.transparent,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                    backgroundColor: Colors.yellow, radius: 5),
                                VerticalDivider(
                                  width: 1.w,
                                ),
                                const Text("10.00AM"),
                              ],
                            )
                          ],
                        )
                      ]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 0.4.h,
                      color: Colors.black,
                    );
                  },
                  itemCount: 6),
            ),
            /////////////////////////////////////////////Yesterday list//////////////////////////////////////////
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.grey[300],
              height: 4.h,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              width: 100.w,
              height: 40.h,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(3.w),
                      height: 10.h,
                      child: Row(children: [
                        Column(
                          children: [
                            Image.asset(Assets.TwitterLogo),
                          ],
                        ),
                        VerticalDivider(
                          width: 4.w,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Email setup successful "),
                            Divider(
                              height: 2.h,
                            ),
                            const Text("Posted new design jobs")
                          ],
                        ),
                        VerticalDivider(
                          width: 24.w,
                          color: Colors.transparent,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                    backgroundColor: Colors.yellow, radius: 5),
                                VerticalDivider(
                                  width: 1.w,
                                ),
                                const Text("10.00AM"),
                              ],
                            )
                          ],
                        )
                      ]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 0.4.h,
                      color: Colors.black,
                    );
                  },
                  itemCount: 6),
            ),
          ]))
    ])));
  }
}
