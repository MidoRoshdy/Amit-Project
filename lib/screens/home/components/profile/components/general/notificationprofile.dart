import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class NotificationsProfile extends StatefulWidget {
  const NotificationsProfile({super.key});

  @override
  State<NotificationsProfile> createState() => _NotificationsProfileState();
}

class _NotificationsProfileState extends State<NotificationsProfile> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
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
                      width: 25.w,
                    ),
                    Text("Notifications",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                  height: 3.h,
                ),
                //Job notification
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[300],
                  height: 4.h,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Job notification",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        // your job search alert
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Your Job Search Alert",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                        Divider(
                          height: 3.h,
                          color: Colors.grey[350],
                        ),
                        //Job Application Update
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Job Application Update",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                        Divider(
                          height: 3.h,
                          color: Colors.grey[350],
                        ),
                        //Job Application Reminders
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Job Application Reminders",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                        Divider(
                          height: 3.h,
                          color: Colors.grey[350],
                        ),
                        //Jobs You May Be Interested In
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Jobs You May Be Interested In",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                        Divider(
                          height: 3.h,
                          color: Colors.grey[350],
                        ),
                        //Job Seeker Updates
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Job Seeker Updates",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                        Divider(
                          height: 3.h,
                          color: Colors.grey[350],
                        ),
                      ],
                    ),
                  ),
                ),
                //Other notification
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[300],
                  height: 4.h,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Other notification",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(children: [
                          //Show Profile
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Show Profile",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                          Divider(
                            height: 3.h,
                            color: Colors.grey[350],
                          ),
                          //All Message
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "All Message",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                          Divider(
                            height: 3.h,
                            color: Colors.grey[350],
                          ),
                          //Message Nudges
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Message Nudges",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                          Divider(
                            height: 3.h,
                            color: Colors.grey[350],
                          ),
                        ]))),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

//  Switch(
//               value: status,
//               onChanged: (bool value) {
//                 setState(() {
//                   status = value;
//                 });
//               },
//               activeColor: Colors.blue,
//               inactiveThumbColor: Colors.grey,
//               inactiveTrackColor: Colors.grey,
//             ),