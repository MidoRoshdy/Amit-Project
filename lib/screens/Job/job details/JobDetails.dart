import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../core/colors.dart';
import '../../../core/enum.dart';
import '../../home/provider/HomeProvider.dart';

// ignore: must_be_immutable
class JobDetails extends StatefulWidget {
  JobDetails({super.key});
  int? index;

  @override
  State<JobDetails> createState() => _JobDetails();
}

class _JobDetails extends State<JobDetails> {
  bool saved = false;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return SafeArea(
          child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Stack(children: [
              SizedBox(
                width: 100.w,
                height: 100.h,
                child: Column(children: [
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Iconsax.arrow_left4)),
                        Text("Job Details",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w500)),
                        IconButton(
                            onPressed: () => setState(() {
                                  saved = !saved;
                                }),
                            icon: saved
                                ? Icon(
                                    Iconsax.archive_15,
                                    color: AppColours.primary700,
                                  )
                                : Icon(
                                    Iconsax.archive_add4,
                                    color: AppColours.primary400,
                                  ))
                      ]),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(Assets.DiscordLogo),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1.h,
                  ),
                  ///////////////////////location and name company /////////////////////////////////////////
                  Text(
                    "Product Designer",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1.h,
                  ),
                  Text(
                    "Zoom • United States",
                    style: TextStyle(
                        fontSize: 9.5.sp,
                        color: AppColours.neutral700,
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1.h,
                  ),
                  ////////////////////////////////////////////job info ////////////////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColours.primary100),
                        child: Text(
                          "Fulltime",
                          style: TextStyle(
                              color: AppColours.primary500,
                              fontSize: 9.5.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColours.primary100),
                        child: Text(
                          "Remote",
                          style: TextStyle(
                              color: AppColours.primary500,
                              fontSize: 9.5.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColours.primary100),
                        child: Text(
                          "Design",
                          style: TextStyle(
                              color: AppColours.primary500,
                              fontSize: 9.5.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  /////////////////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: 90.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColours.neutral100),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            context
                                    .read<HomeProvider>()
                                    .state
                                    .selectedJobDetailsSection =
                                SelectedJobDetailsSection.description;
                          }),
                          child: Container(
                            width: 30.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: context
                                            .read<HomeProvider>()
                                            .state
                                            .selectedJobDetailsSection ==
                                        SelectedJobDetailsSection.description
                                    ? AppColours.information900
                                    : null),
                            //Description
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 9.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context
                                              .read<HomeProvider>()
                                              .state
                                              .selectedJobDetailsSection ==
                                          SelectedJobDetailsSection.description
                                      ? Colors.white
                                      : AppColours.neutral500),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => setState(() {
                            context
                                    .read<HomeProvider>()
                                    .state
                                    .selectedJobDetailsSection =
                                SelectedJobDetailsSection.company;
                          }),
                          child: Container(
                            width: 30.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: context
                                            .read<HomeProvider>()
                                            .state
                                            .selectedJobDetailsSection ==
                                        SelectedJobDetailsSection.company
                                    ? AppColours.information900
                                    : null),
                            //company
                            child: Text(
                              "Company",
                              style: TextStyle(
                                  fontSize: 9.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context
                                              .read<HomeProvider>()
                                              .state
                                              .selectedJobDetailsSection ==
                                          SelectedJobDetailsSection.company
                                      ? Colors.white
                                      : AppColours.neutral500),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => setState(() {
                            context
                                    .read<HomeProvider>()
                                    .state
                                    .selectedJobDetailsSection =
                                SelectedJobDetailsSection.people;
                          }),
                          child: Container(
                            width: 30.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: context
                                            .read<HomeProvider>()
                                            .state
                                            .selectedJobDetailsSection ==
                                        SelectedJobDetailsSection.people
                                    ? AppColours.information900
                                    : null),
                            //people
                            child: Text(
                              "People",
                              style: TextStyle(
                                  fontSize: 9.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context
                                              .read<HomeProvider>()
                                              .state
                                              .selectedJobDetailsSection ==
                                          SelectedJobDetailsSection.people
                                      ? Colors.white
                                      : AppColours.neutral500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  Expanded(
                      child: FadingEdgeScrollView.fromSingleChildScrollView(
                          gradientFractionOnEnd: 0.6,
                          child: SingleChildScrollView(
                              controller: scrollController,
                              child: context
                                  .watch<HomeProvider>()
                                  .chosenJobDetailsSection())))
                ]),
              ),
              Positioned(
                bottom: 5.h,
                child: SizedBox(
                  width: 90.w,
                  height: 7.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, App_Routes.Jobapplied);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColours.primary500,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "Apply now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ])),
      ));
    });
  }
}
