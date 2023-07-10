import 'package:amit_project/core/assets.dart';
import 'package:amit_project/screens/home/components/message/provider/messageprovider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_routes.dart';
import '../../../../core/colors.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      SizedBox(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Divider(
                color: Colors.transparent,
                height: 4.h,
              ),
              /////////heder////////////////////////////////
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
                  Text("Messsages",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              Divider(
                height: 3.h,
                color: Colors.transparent,
              ),
              /////search bar //////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColours.neutral300, width: 0.5.sp),
                          borderRadius: BorderRadius.circular(50)),
                      width: 80.w,
                      height: 7.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(
                            Iconsax.search_normal,
                            size: 20.sp,
                            color: Colors.grey[500],
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text("Search",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        enableDrag: true,
                        isDismissible: true,
                        useRootNavigator: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            alignment: Alignment.topLeft,
                            height: 35.h,
                            width: 30.w,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Message filters",
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 2.h,
                                  color: Colors.transparent,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    height: 6.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: AppColours.neutral100,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(50))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          VerticalDivider(
                                            width: 2.w,
                                            color: Colors.transparent,
                                          ),
                                          const Text(
                                            "Unread",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 67.w,
                                          ),
                                          const Icon(Iconsax.arrow_right_1)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 2.h,
                                  color: Colors.transparent,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(1),
                                  height: 6.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColours.neutral100,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        VerticalDivider(
                                          width: 2.w,
                                          color: Colors.transparent,
                                        ),
                                        const Text(
                                          "Spam",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 70.w,
                                        ),
                                        const Icon(Iconsax.arrow_right_1)
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 2.h,
                                  color: Colors.transparent,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(1),
                                  height: 6.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColours.neutral100,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        VerticalDivider(
                                          width: 2.w,
                                          color: Colors.transparent,
                                        ),
                                        const Text(
                                          "Archived",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 64.w,
                                        ),
                                        const Icon(Iconsax.arrow_right_1)
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
                    child: Container(
                      height: 6.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColours.neutral300, width: 0.5.sp),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(Iconsax.setting_4),
                    ),
                  )
                ],
              ),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              SizedBox(
                height: 68.1.h,
                width: 100.w,
                /////////////////////////////////empty message///////////////////////////
                child: context.read<MessageProvier>().state.Masseges.isEmpty
                    ? Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10.0, top: 80),
                            child: Image.asset(
                              Assets.empty_message,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "You have not received any",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "messages",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Once your application has reached the interview",
                            style: TextStyle(
                                fontSize: 16, color: AppColours.neutral500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "stage, you will get a message from the recruiter.",
                            style: TextStyle(
                                fontSize: 16, color: AppColours.neutral500),
                          ),
                        ],
                      )
                    : ListView.separated(
                        itemCount: context
                            .read<MessageProvier>()
                            .state
                            .Masseges
                            .length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.sendmassege);
                            },
                            child: Container(
                                padding: EdgeInsets.all(3.w),
                                height: 12.h,
                                decoration: BoxDecoration(
                                    border: Border.symmetric(
                                        horizontal: BorderSide(
                                            width: 0.3.w,
                                            color: AppColours.neutral300))),
                                alignment: Alignment.topLeft,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Divider(
                                            height: 1.h,
                                          ),
                                          Image.asset(context
                                              .read<MessageProvier>()
                                              .state
                                              .Masseges[index]
                                              .Photo!),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Text(
                                                  context
                                                      .read<MessageProvier>()
                                                      .state
                                                      .Masseges[index]
                                                      .name!,
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 50.w,
                                                ),
                                                Text(
                                                  context
                                                      .read<MessageProvier>()
                                                      .state
                                                      .Masseges[index]
                                                      .Time!,
                                                  style:
                                                      TextStyle(fontSize: 9.sp),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 70.w,
                                              child: Text(
                                                context
                                                    .read<MessageProvier>()
                                                    .state
                                                    .Masseges[index]
                                                    .Message!,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        AppColours.neutral600,
                                                    fontSize: 13),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ]),
                                    ])),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: Colors.transparent,
                            height: 0.0,
                          );
                        },
                      ),
              ),
            ]),
          ))
    ])));
  }
}
