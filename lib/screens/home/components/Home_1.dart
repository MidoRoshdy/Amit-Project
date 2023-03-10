import 'package:amit_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../core/colors.dart';
import '../provider/HomeProvider.dart';
import '../widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Text("home");
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
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
                      Text("Hi, Mohamed👋",
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
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SuggestedJobItem(index: index);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 6.sp);
                    },
                    itemCount: context
                        .read<HomeProvider>()
                        .state
                        .suggestedJobs
                        .length),
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
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return RecentJobItem(index: index);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 2.h,
                        color: Colors.black,
                      );
                    },
                    itemCount:
                        context.read<HomeProvider>().state.recentJobs.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
