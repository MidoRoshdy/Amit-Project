import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../provider/HomeProvider.dart';

class saved extends StatelessWidget {
  const saved({super.key});

  @override
  Widget build(BuildContext context) {
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
                    width: 29.w,
                  ),
                  Text("Saved",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              Container(
                height: 4.h,
                alignment: Alignment.center,
                width: double.infinity,
                color: AppColours.neutral200,
                child: Text(
                  "${context.watch<HomeProvider>().state.favorites.length} jobs saved",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColours.neutral500),
                ),
              ),
              SizedBox(
                width: 100.w,
                height: 79.h,
                child: context.watch<HomeProvider>().state.favorites.isEmpty
                    ? SizedBox(
                        width: 100.w,
                        height: 79.h,
                        ////////////////////////////////empty save/////////////////////////////////////
                        child: SafeArea(
                          child: Scaffold(
                              body: Stack(children: [
                            SizedBox(
                              height: 100.h,
                              width: 100.w,
                              child: Column(
                                children: [
                                  Divider(
                                    color: Colors.transparent,
                                    height: 2.h,
                                  ),
                                  Divider(
                                    height: 15.h,
                                    color: Colors.transparent,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          Assets.succsesssaved,
                                        ),
                                      ),
                                      Divider(
                                        height: 2.h,
                                        color: Colors.transparent,
                                      ),
                                      const Text(
                                        "Nothing has been saved yet",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(
                                        height: 2.h,
                                        color: Colors.transparent,
                                      ),
                                      Text(
                                          "Press the star icon on the job you want to save.",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: AppColours.neutral500)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                        ),
                      )
                    : (
                        //////////////////////////////////////list view////////////////////////////////
                        ListView.separated(
                            itemBuilder: (ctx, index) {
                              return Container(
                                  padding: EdgeInsets.all(3.w),
                                  height: 16.h,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 0.3.w,
                                              color: AppColours.neutral300))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Divider(
                                            height: 1.h,
                                          ),
                                          // Image.asset(Assets.TwitterLogo),
                                          context.watch().state.favorites[index]
                                                      ["image"] ==
                                                  null
                                              ? Image.asset(Assets.TwitterLogo)
                                              : Image.network(context
                                                  .watch<HomeProvider>()
                                                  .state
                                                  .favorites
                                                  .elementAt(index)["image"]),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            context
                                                .watch<HomeProvider>()
                                                .state
                                                .favorites
                                                .elementAt(index)["name"],
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            context
                                                .watch<HomeProvider>()
                                                .state
                                                .favorites
                                                .elementAt(index)["location"],
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColours.neutral500),
                                          ),
                                          Divider(
                                            height: 2.7.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                context
                                                    .watch<HomeProvider>()
                                                    .state
                                                    .favorites
                                                    .elementAt(
                                                        index)["created_at"],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        AppColours.neutral600,
                                                    fontSize: 13),
                                              ),
                                              SizedBox(
                                                width: 12.w,
                                              ),
                                              const Icon(
                                                Iconsax.clock,
                                                size: 15,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 0.5.w,
                                              ),
                                              Text(
                                                  context
                                                      .watch<HomeProvider>()
                                                      .state
                                                      .favorites
                                                      .elementAt(
                                                          index)["updated_at"],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          AppColours.neutral600,
                                                      fontSize: 13))
                                            ],
                                          ),
                                          Divider(
                                            height: 2.h,
                                            color: Colors.transparent,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 0.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  enableDrag: true,
                                                  isDismissible: true,
                                                  useRootNavigator: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      height: 30.h,
                                                      width: 30.w,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        50),
                                                                topRight: Radius
                                                                    .circular(
                                                                        50)),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child:
                                                            Column(children: [
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pushNamed(
                                                                      App_Routes
                                                                          .Jobapplied);
                                                            },
                                                            child: Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .all(1),
                                                              height: 6.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              decoration: BoxDecoration(
                                                                  color: AppColours
                                                                      .neutral300,
                                                                  borderRadius: const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          50))),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(10),
                                                                child: Row(
                                                                  children: [
                                                                    const Icon(
                                                                        Iconsax
                                                                            .directbox_default),
                                                                    SizedBox(
                                                                      width:
                                                                          4.w,
                                                                    ),
                                                                    const Text(
                                                                      "Apply Job",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          53.w,
                                                                    ),
                                                                    const Icon(
                                                                        Iconsax
                                                                            .arrow_right_1)
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 2.h,
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(1),
                                                            height: 6.h,
                                                            alignment: Alignment
                                                                .center,
                                                            decoration: BoxDecoration(
                                                                color: AppColours
                                                                    .neutral300,
                                                                borderRadius:
                                                                    const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
                                                                            50))),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(10),
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                      Iconsax
                                                                          .export),
                                                                  SizedBox(
                                                                    width: 4.w,
                                                                  ),
                                                                  const Text(
                                                                    "Share via...",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 51.w,
                                                                  ),
                                                                  const Icon(Iconsax
                                                                      .arrow_right_1)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 2.h,
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(1),
                                                            height: 6.h,
                                                            alignment: Alignment
                                                                .center,
                                                            decoration: BoxDecoration(
                                                                color: AppColours
                                                                    .neutral300,
                                                                borderRadius:
                                                                    const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
                                                                            50))),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(10),
                                                              child: Row(
                                                                children: [
                                                                  const Icon(Iconsax
                                                                      .archive_minus),
                                                                  SizedBox(
                                                                    width: 4.w,
                                                                  ),
                                                                  const Text(
                                                                    "Cancel save",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 49.w,
                                                                  ),
                                                                  const Icon(Iconsax
                                                                      .arrow_right_1)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: const Icon(Iconsax.more))
                                        ],
                                      )
                                    ],
                                  ));
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                color: Colors.transparent,
                                height: 0.0,
                              );
                            },
                            itemCount: 12)),
              ),
            ])),
      ])),
    );
  }
}
