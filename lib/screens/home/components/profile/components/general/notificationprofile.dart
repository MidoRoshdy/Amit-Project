import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../provider/profileprovider.dart';

class NotificationsProfile extends StatefulWidget {
  const NotificationsProfile({super.key});

  @override
  State<NotificationsProfile> createState() => _NotificationsProfileState();
}

class _NotificationsProfileState extends State<NotificationsProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
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
                              fontSize: 14.sp, fontWeight: FontWeight.w500)),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                              Switch(
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .jobSearchAlertChange,
                                value: context
                                    .watch<ProfileProvider>()
                                    .state
                                    .jobSearchAlert,
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
                              Switch(
                                value: context
                                    .watch<ProfileProvider>()
                                    .state
                                    .jobApplicationUpdate,
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .jobApplicationUpdateChange,
                              )
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
                              Switch(
                                value: context
                                    .watch<ProfileProvider>()
                                    .state
                                    .jobApplicationReminders,
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .jobApplicationRemindersChange,
                              )
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
                              Switch(
                                value: context
                                    .watch<ProfileProvider>()
                                    .state
                                    .interestedInJobs,
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .interestedInJobsChange,
                              )
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
                              Switch(
                                value: context
                                    .watch<ProfileProvider>()
                                    .state
                                    .jobSeekerUpdates,
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .jobSeekerUpdatesChange,
                              )
                            ],
                          ),
                          Divider(
                            height: 1.h,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Switch(
                                  value: context
                                      .watch<ProfileProvider>()
                                      .state
                                      .showProfile,
                                  onChanged: context
                                      .read<ProfileProvider>()
                                      .showProfileChange,
                                )
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Switch(
                                  value: context
                                      .watch<ProfileProvider>()
                                      .state
                                      .allMessages,
                                  onChanged: context
                                      .read<ProfileProvider>()
                                      .allMessagesChange,
                                )
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Switch(
                                  value: context
                                      .watch<ProfileProvider>()
                                      .state
                                      .messageNudges,
                                  onChanged: context
                                      .read<ProfileProvider>()
                                      .messageNudgesChange,
                                )
                              ],
                            ),
                            Divider(
                              height: 3.h,
                              color: Colors.grey[350],
                            ),
                          ]))),
                ],
              ),
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