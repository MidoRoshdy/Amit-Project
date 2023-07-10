import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/colors.dart';

class ActiveJob extends StatefulWidget {
  const ActiveJob({super.key});

  @override
  State<ActiveJob> createState() => _ActiveJobState();
}

class _ActiveJobState extends State<ActiveJob> {
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: AppColours.neutral200,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 6, top: 6),
                child: Row(
                  children: [
                    Text(
                      "3 Jobs",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColours.neutral500),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1.h,
              color: Colors.transparent,
            ),
            ///////////////////list
            Padding(
              padding: const EdgeInsets.all(13),
              child: SizedBox(
                height: 70.h,
                width: 100.w,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.Jobapplied);
                        },
                        child: SizedBox(
                          height: 30.h,
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(Assets.ZoomLogo),
                                        Container(
                                          width: 65.w,
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "UI/UX Designer",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 1.h,
                                                color: Colors.transparent,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Spectrum • Jakarta, Indonesia",
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColours
                                                            .neutral600),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () => setState(() {
                                            saved = !saved;
                                          }),
                                          icon:
                                              const Icon(Iconsax.archive_minus),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      height: 2.h,
                                      color: Colors.transparent,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Row(children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              height: 5.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: AppColours.primary100),
                                              child: Text(
                                                "Fulltime",
                                                style: TextStyle(
                                                    color:
                                                        AppColours.primary500,
                                                    fontSize: 9.5.sp,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 2.w,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              height: 5.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: AppColours.primary100),
                                              child: Text(
                                                "Remote",
                                                style: TextStyle(
                                                    color:
                                                        AppColours.primary500,
                                                    fontSize: 9.5.sp,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ]),
                                        ),
                                        const Text("Posted 2 days ago")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(1.w),
                                margin:
                                    EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                                alignment: Alignment.center,
                                height: 11.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColours.neutral500,
                                      width: 1.sp,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 10.sp,
                                            backgroundColor:
                                                AppColours.primary500,
                                            child: CircleAvatar(
                                              radius: 9.sp,
                                              backgroundColor: Colors.white,
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color:
                                                        AppColours.primary500,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          Text(
                                            "BioData",
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColours.primary500),
                                          )
                                        ],
                                      ),
                                      Divider(
                                        height: 1.h,
                                        color: Colors.blue,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 10.sp,
                                            backgroundColor:
                                                AppColours.neutral400,
                                            child: CircleAvatar(
                                              radius: 9.sp,
                                              backgroundColor: Colors.white,
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color:
                                                        AppColours.neutral400,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          Text("Type of Work",
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColours.neutral500))
                                        ],
                                      ),
                                      Divider(
                                        height: 1.h,
                                        color: Colors.blue,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 10.sp,
                                            backgroundColor:
                                                AppColours.neutral400,
                                            child: CircleAvatar(
                                              radius: 9.sp,
                                              backgroundColor: Colors.white,
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color:
                                                        AppColours.neutral400,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.h,
                                            color: Colors.transparent,
                                          ),
                                          Text("Upload portfolio",
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColours.neutral500))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 3.h,
                        color: Colors.transparent,
                      );
                    },
                    itemCount: 3),
              ),
            )
          ],
        ));
  }
}
