import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_routes.dart';
import '../../../../core/colors.dart';
import '../../../../core/enum.dart';
import '../../provider/HomeProvider.dart';

class Applied extends StatefulWidget {
  const Applied({super.key});

  @override
  State<Applied> createState() => _AppliedState();
}

class _AppliedState extends State<Applied> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return SafeArea(
          child: Scaffold(
              body: Stack(children: [
        SizedBox(
            height: 100.h,
            width: 100.w,
            child: Column(children: [
              Divider(
                color: Colors.transparent,
                height: 3.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            App_Routes.home, (route) => false);
                      },
                      icon: const Icon(Iconsax.arrow_left4)),
                  SizedBox(
                    width: 23.w,
                  ),
                  Text("Applied Job",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              Divider(
                height: 3.h,
                color: Colors.transparent,
              ),
              Container(
                  width: 90.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColours.neutral200),
                  child: Row(
                    children: [
                      //activejob

                      InkWell(
                          onTap: () => setState(() {
                                context
                                        .read<HomeProvider>()
                                        .state
                                        .selectedAppliedSection =
                                    SelectedJobAppliedSection.Active;
                              }),
                          child: Container(
                            width: 45.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: context
                                            .read<HomeProvider>()
                                            .state
                                            .selectedAppliedSection ==
                                        SelectedJobAppliedSection.Active
                                    ? AppColours.information900
                                    : null),
                            child: Text(
                              "Active",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context
                                              .read<HomeProvider>()
                                              .state
                                              .selectedAppliedSection ==
                                          SelectedJobAppliedSection.Active
                                      ? Colors.white
                                      : AppColours.neutral500),
                            ),
                          )),
                      //rejectedjob
                      InkWell(
                          onTap: () => setState(() {
                                context
                                        .read<HomeProvider>()
                                        .state
                                        .selectedAppliedSection =
                                    SelectedJobAppliedSection.Rejected;
                              }),
                          child: Container(
                            width: 45.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: context
                                            .read<HomeProvider>()
                                            .state
                                            .selectedAppliedSection ==
                                        SelectedJobAppliedSection.Rejected
                                    ? AppColours.information900
                                    : null),
                            child: Text(
                              "Rejected",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context
                                              .read<HomeProvider>()
                                              .state
                                              .selectedAppliedSection ==
                                          SelectedJobAppliedSection.Rejected
                                      ? Colors.white
                                      : AppColours.neutral500),
                            ),
                          ))
                    ],
                  )),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              Container(
                width: double.infinity,
                color: AppColours.neutral200,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "3 Jobs",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColours.neutral500),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: FadingEdgeScrollView.fromSingleChildScrollView(
                      gradientFractionOnEnd: 0.6,
                      child: SingleChildScrollView(
                          controller: scrollController,
                          child: context
                              .watch<HomeProvider>()
                              .chosenJobAppliedSection())))
            ]))
      ])));
    });
  }
}
