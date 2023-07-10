import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(children: [
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Iconsax.arrow_left4)),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text("Complete Profile",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  ],
                ),
                Divider(
                  height: 3.h,
                  color: Colors.transparent,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: 50.sp,
                  lineWidth: 10.0,
                  percent: 0.5,
                  center: Text(
                    "50%",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColours.primary500,
                        fontWeight: FontWeight.w500),
                  ),
                  progressColor: AppColours.primary400,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                Divider(
                  height: 2.h,
                  color: Colors.transparent,
                ),
                Text(
                  "2/4 Completed",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColours.primary400),
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                Text(
                  "Complete your profile before applying for a job",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColours.neutral500),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Column(
                      children: [
                        ////////////////////1///////////////////////
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.personaldetails);
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                            alignment: Alignment.center,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: AppColours.primary100,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColours.primary400,
                                  width: 1.sp,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 13.sp,
                                    backgroundColor: AppColours.primary500,
                                    child: const SizedBox.expand(
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.check_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: 70.w,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              VerticalDivider(
                                                width: 1.w,
                                              ),
                                              Text(
                                                "Personal Details",
                                                style:
                                                    TextStyle(fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          const Text(
                                            "Full name, email, phone number, and your\n address",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Iconsax.arrow_right_1)
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          width: 1.w,
                          color: AppColours.neutral500,
                        ),
                        ///////////////////////2///////////////////
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.education);
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                            alignment: Alignment.center,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: AppColours.neutral200,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColours.neutral400,
                                  width: 1.sp,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 13.sp,
                                    backgroundColor: AppColours.neutral400,
                                    child: const SizedBox.expand(
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.check_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: 70.w,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              VerticalDivider(
                                                width: 1.w,
                                              ),
                                              Text(
                                                "Education",
                                                style:
                                                    TextStyle(fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          const Text(
                                            "Enter your educational history to be considered by the recruiter",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Iconsax.arrow_right_1)
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          width: 1.w,
                          color: AppColours.neutral500,
                        ),
                        /////////////////////3//////////////////
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.experience);
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                            alignment: Alignment.center,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: AppColours.neutral200,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColours.neutral400,
                                  width: 1.sp,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 13.sp,
                                    backgroundColor: AppColours.neutral400,
                                    child: const SizedBox.expand(
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.check_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: 70.w,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              VerticalDivider(
                                                width: 1.w,
                                              ),
                                              Text(
                                                "Experience",
                                                style:
                                                    TextStyle(fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          const Text(
                                            "Enter your work experience to be considered by the recruiter",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Iconsax.arrow_right_1)
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          width: 1.w,
                          color: AppColours.neutral500,
                        ),
                        //////////////////////4////////////////
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.portfolio);
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                            alignment: Alignment.center,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: AppColours.primary100,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColours.primary400,
                                  width: 1.sp,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 13.sp,
                                    backgroundColor: AppColours.primary500,
                                    child: const SizedBox.expand(
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.check_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: 70.w,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              VerticalDivider(
                                                width: 1.w,
                                              ),
                                              Text(
                                                "Portfolio",
                                                style:
                                                    TextStyle(fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          const Text(
                                            "Create your portfolio. Applying for various types of jobs is easier.",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Iconsax.arrow_right_1)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
