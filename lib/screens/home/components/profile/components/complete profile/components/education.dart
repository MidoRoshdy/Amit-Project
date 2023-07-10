import 'package:amit_project/core/assets.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

import '../../../../../../../core/app_routes.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController _startyear = TextEditingController();
  final TextEditingController _lastyear = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Iconsax.arrow_left4)),
                        SizedBox(
                          width: 23.w,
                        ),
                        Text("Education",
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.transparent,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(1.w),
                        margin: EdgeInsets.only(bottom: 2.h),
                        alignment: Alignment.center,
                        height: 67.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: AppColours.neutral400,
                              width: 1.sp,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ///university
                              Row(
                                children: [
                                  Text(
                                    "University *",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColours.neutral500),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 1.h,
                                color: Colors.transparent,
                              ),
                              Container(
                                padding: EdgeInsets.all(1.w),
                                margin: EdgeInsets.only(bottom: 2.h),
                                alignment: Alignment.center,
                                height: 8.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColours.neutral400,
                                      width: 1.sp,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColours.neutral500),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "University",
                                      )),
                                ),
                              ),

                              ///title
                              Row(
                                children: [
                                  Text(
                                    "Title ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColours.neutral500),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 1.h,
                                color: Colors.transparent,
                              ),
                              Container(
                                padding: EdgeInsets.all(1.w),
                                margin: EdgeInsets.only(bottom: 2.h),
                                alignment: Alignment.center,
                                height: 8.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColours.neutral400,
                                      width: 1.sp,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColours.neutral500),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "title",
                                      )),
                                ),
                              ),
                              //start year
                              Row(
                                children: [
                                  Text(
                                    "Start year ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColours.neutral500),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 1.h,
                                color: Colors.transparent,
                              ),
                              Container(
                                padding: EdgeInsets.all(1.w),
                                margin: EdgeInsets.only(bottom: 2.h),
                                alignment: Alignment.center,
                                height: 8.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColours.neutral400,
                                      width: 1.sp,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      readOnly: true,
                                      controller: _startyear,
                                      onTap: () async {
                                        DateTime? Datepicker1 =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2025));
                                        if (Datepicker1 != null) {
                                          setState(() {
                                            _startyear.text =
                                                DateFormat("yyyy-MM-dd")
                                                    .format(Datepicker1);
                                          });
                                        }
                                      },
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColours.neutral500),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Start Year ",
                                          icon: Icon(Iconsax.calendar_1))),
                                ),
                              ),
                              //End Year
                              Row(
                                children: [
                                  Text(
                                    "Last Year ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColours.neutral500),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 1.h,
                                color: Colors.transparent,
                              ),
                              Container(
                                padding: EdgeInsets.all(1.w),
                                margin: EdgeInsets.only(bottom: 2.h),
                                alignment: Alignment.center,
                                height: 8.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColours.neutral400,
                                      width: 1.sp,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      readOnly: true,
                                      controller: _lastyear,
                                      onTap: () async {
                                        DateTime? Datepicker2 =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2025));
                                        if (Datepicker2 != null) {
                                          setState(() {
                                            _lastyear.text =
                                                DateFormat("yyyy-MM-dd")
                                                    .format(Datepicker2);
                                          });
                                        }
                                      },
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColours.neutral500),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Last Year ",
                                          icon: Icon(Iconsax.calendar_1))),
                                ),
                              ),
                              Divider(
                                height: 2.h,
                              ),
                              //butten
                              SizedBox(
                                width: 90.w,
                                height: 7.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            App_Routes.experience,
                                            (route) => false);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      backgroundColor: AppColours.primary600),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(1.w),
                        margin: EdgeInsets.only(bottom: 2.h),
                        alignment: Alignment.center,
                        height: 12.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: AppColours.neutral400,
                              width: 1.sp,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(Assets.TwitterLogo),
                              Container(
                                width: 55.w,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "The University of Arizona",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 1.h,
                                      color: Colors.transparent,
                                    ),
                                    Row(
                                      children: [
                                        Text("Bachelor of Art and Design",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColours.neutral500)),
                                      ],
                                    ),
                                    Divider(
                                      height: 1.h,
                                      color: Colors.transparent,
                                    ),
                                    Row(
                                      children: [
                                        Text("2012 - 2015",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColours.neutral400)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Iconsax.edit_2,
                                    color: AppColours.primary500),
                              )
                            ],
                          ),
                        ),
                      ),
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
