import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/colors.dart';
import '../../provider/HomeProvider.dart';
import '../../widgets/home_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w),
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Hi, ${context.watch<HomeProvider>().state.username}👋",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.sp)),
                      Divider(
                        color: Colors.transparent,
                        height: 2.h,
                      ),
                      Text("Create a better future for yourself here",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColours.neutral500,
                              fontSize: 9.sp))
                    ],
                  ),
                  CircleAvatar(
                    radius: 21.sp,
                    backgroundColor: AppColours.neutral300,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.sp,
                        child: IconButton(
                            color: Colors.black,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.notifications);
                            },
                            icon: const Icon(Iconsax.notification4),
                            iconSize: 20.sp)),
                  ),
                ],
              ),
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              /////////////////////////search bar///////////////////////////////////
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColours.neutral300, width: 0.5.sp),
                    borderRadius: BorderRadius.circular(50)),
                child: TextField(
                  onTap: () => showSearch(
                      context: context, delegate: HomeSearchDelegate()),
                  controller:
                      context.read<HomeProvider>().state.searchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Iconsax.search_normal4),
                      hintText: "Search ... ",
                      hintStyle: TextStyle(
                          fontSize: 12.sp, color: AppColours.neutral400)),
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              ////////////////////////////////////////////////Suggested Jobs/////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Suggested Jobs", style: TextStyle(fontSize: 13.sp)),
                  InkWell(
                    child: Text("View All",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColours.primary500,
                            fontWeight: FontWeight.w500)),
                    onTap: () {},
                  )
                ],
              ),
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              SizedBox(
                height: 25.h,
                child: context.watch<HomeProvider>().state.suggested.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.Jobdetails);
                        },
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) {
                            return Card(
                                color: AppColours.primary900,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SizedBox(
                                    height: 40.h,
                                    width: 90.w,
                                    child: Padding(
                                      padding: EdgeInsets.all(4.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                child: Image.asset(
                                                    Assets.ZoomLogo,
                                                    //  Image.network(context
                                                    //     .watch<HomeProvider>()
                                                    //     .state
                                                    //     .suggested[i]["image"]),
                                                    scale: 1.5.sp),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    context
                                                        .watch<HomeProvider>()
                                                        .state
                                                        .suggested[i]["name"],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.sp),
                                                  ),
                                                  Text(
                                                    "${context.watch<HomeProvider>().state.suggested[i]["job_skill"]} •\n ${context.watch<HomeProvider>().state.suggested[i]['job_time_type']}",
                                                    style: TextStyle(
                                                        color: AppColours
                                                            .neutral400,
                                                        fontSize: 9.5.sp),
                                                  ),
                                                ],
                                              ),
                                              // context
                                              //             .watch<HomeProvider>()
                                              //             .state
                                              //             .iconSuggest[i] ==
                                              //         false
                                              //     ? const Icon(
                                              //         Iconsax.archive_15,
                                              //       )
                                              //     : const Icon(
                                              //         Iconsax.archive_add4,
                                              //         color: Colors.white,
                                              //       ),

                                              IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      saved = !saved;
                                                    });
                                                  },
                                                  icon: saved
                                                      ? const Icon(
                                                          Iconsax.archive_15)
                                                      : const Icon(
                                                          Iconsax.archive_add4),
                                                  color: Colors.white,
                                                  iconSize: 20.sp)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 5.h,
                                                width: 23.w,
                                                padding: EdgeInsets.all(1.w),
                                                decoration: BoxDecoration(
                                                  color: AppColours.neutral400,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Text(
                                                  context
                                                      .watch<HomeProvider>()
                                                      .state
                                                      .suggested[i]['job_type'],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 4.h,
                                                width: 23.w,
                                                padding: EdgeInsets.all(1.w),
                                                decoration: BoxDecoration(
                                                  color: AppColours.neutral400,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Text(
                                                  context
                                                          .watch<HomeProvider>()
                                                          .state
                                                          .suggested[i]
                                                      ["job_level"],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 4.h,
                                                width: 23.w,
                                                padding: EdgeInsets.all(1.w),
                                                decoration: BoxDecoration(
                                                  color: AppColours.neutral400,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Text(
                                                  context
                                                      .watch<HomeProvider>()
                                                      .state
                                                      .suggested[i]["salary"],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text.rich(TextSpan(
                                                  text:
                                                      "\$${context.watch<HomeProvider>().state.suggested[i]["salary"].toString()}",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: "/Month",
                                                      style: TextStyle(
                                                        color: AppColours
                                                            .neutral100,
                                                        fontSize: 8.sp,
                                                      ),
                                                    )
                                                  ])),
                                              SizedBox(
                                                width: 28.w,
                                                height: 5.h,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushNamed(context,
                                                        App_Routes.Jobapplied);
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor: AppColours
                                                          .primary500,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50))),
                                                  child: Text(
                                                    "Apply Now",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )));
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 6.sp);
                          },
                          itemCount: context
                              .watch<HomeProvider>()
                              .state
                              .suggested
                              .length,
                        ),
                      ),
              ),
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              ////////////////////////////////////recent job //////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Jobs", style: TextStyle(fontSize: 13.sp)),
                  InkWell(
                    child: Text("View All",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColours.primary500,
                            fontWeight: FontWeight.w500)),
                    onTap: () {},
                  )
                ],
              ),
              Divider(
                color: Colors.transparent,
                height: 2.h,
              ),
              SizedBox(
                  width: 100.w,
                  child: context.watch<HomeProvider>().state.jobs.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.Jobdetails);
                          },
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (ctx, i) {
                              return SizedBox(
                                height: 16.h,
                                child: Padding(
                                  padding: EdgeInsets.all(5.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                                Assets.DiscordLogo,
                                                scale: 1.5.sp),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                context
                                                    .watch<HomeProvider>()
                                                    .state
                                                    .jobs[i]['name'],
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                              Text(
                                                "${context.watch<HomeProvider>().state.jobs[i]['job_skill']} •\n ${context.watch<HomeProvider>().state.jobs[i]['job_time_type']}",
                                                style:
                                                    TextStyle(fontSize: 8.sp),
                                              ),
                                            ],
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  saved = !saved;
                                                });
                                              },
                                              icon: saved
                                                  ? const Icon(
                                                      Iconsax.archive_15)
                                                  : const Icon(
                                                      Iconsax.archive_add4),
                                              color: saved
                                                  ? AppColours.primary500
                                                  : Colors.black,
                                              iconSize: 20.sp)
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 4.h,
                                            width: 17.w,
                                            padding: EdgeInsets.all(1.w),
                                            decoration: BoxDecoration(
                                              color: AppColours.primary100,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Text(
                                              context
                                                  .watch<HomeProvider>()
                                                  .state
                                                  .jobs[i]['job_type'],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColours.primary500,
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 4.h,
                                            width: 17.w,
                                            padding: EdgeInsets.all(1.w),
                                            decoration: BoxDecoration(
                                              color: AppColours.primary100,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Text(
                                              context
                                                  .watch<HomeProvider>()
                                                  .state
                                                  .jobs[i]['job_type'],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColours.primary500,
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 4.h,
                                            width: 17.w,
                                            padding: EdgeInsets.all(1.w),
                                            decoration: BoxDecoration(
                                              color: AppColours.primary100,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Text(
                                              "Senior",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColours.primary500,
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                          Text.rich(TextSpan(
                                              text:
                                                  "\$${context.watch<HomeProvider>().state.jobs[i]['salary'].toString()}",
                                              style: TextStyle(
                                                color: AppColours.success700,
                                                fontSize: 12.sp,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "/Month",
                                                  style: TextStyle(
                                                    color:
                                                        AppColours.neutral500,
                                                    fontSize: 8.sp,
                                                  ),
                                                )
                                              ])),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 2.h,
                                color: Colors.black,
                              );
                            },
                            itemCount:
                                context.watch<HomeProvider>().state.jobs.length,
                          ),
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
