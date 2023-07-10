import 'package:amit_project/screens/home/components/profile/provider/profileprovider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import '../../../../../../../core/app_routes.dart';
import '../../../../../../../core/assets.dart';
import '../../../../../../../core/colors.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController _startyear = TextEditingController();
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
                        Text("Experience",
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
                        height: 90.h,
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
                              ///Position *
                              Row(
                                children: [
                                  Text(
                                    "Position *",
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
                                        hintText: "Position",
                                      )),
                                ),
                              ),

                              ///Type of work
                              Row(
                                children: [
                                  Text(
                                    "Type of work ",
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
                                        hintText: "Type of work",
                                      )),
                                ),
                              ),
                              //company name
                              Row(
                                children: [
                                  Text(
                                    "Company name *",
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
                                        hintText: "Company name ",
                                      )),
                                ),
                              ),
                              //location
                              Row(
                                children: [
                                  Text(
                                    "Location",
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
                                        icon: Icon(Iconsax.location),
                                        border: InputBorder.none,
                                        hintText: "Location",
                                      )),
                                ),
                              ),
                              //check box
                              SizedBox(
                                  child: Row(
                                children: [
                                  Checkbox(
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) {
                                        return context
                                                .watch<ProfileProvider>()
                                                .state
                                                .checkbox
                                            ? AppColours.primary500
                                            : AppColours.neutral300;
                                      }),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      value: context
                                          .watch<ProfileProvider>()
                                          .state
                                          .checkbox,
                                      onChanged: context
                                          .read<ProfileProvider>()
                                          .onChangeRememberMe),
                                  Text("I am currently working in this role",
                                      style: TextStyle(
                                          fontSize: 9.sp,
                                          color: AppColours.neutral800,
                                          fontWeight: FontWeight.w400))
                                ],
                              )),
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
                                            App_Routes.education,
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
