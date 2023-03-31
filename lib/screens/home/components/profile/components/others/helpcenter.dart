import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/colors.dart';
import '../../../../provider/HomeProvider.dart';
import '../../../../widgets/home_widgets.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  bool selected = false;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

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
                  //header
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Iconsax.arrow_left4)),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text("Help Center",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1.h,
                  ),
                  /////////////////search bar //////////////////////////
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColours.neutral300, width: 0.5.sp),
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        onTap: () => showSearch(
                            context: context, delegate: HomeSearchDelegate()),
                        controller:
                            context.read<HomeProvider>().state.searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Iconsax.search_normal4),
                            hintText: "What can we help ?",
                            hintStyle: TextStyle(
                                fontSize: 12.sp, color: AppColours.neutral400)),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AnimatedContainer(
                              width: selected ? 90.w : 90.w,
                              height: selected ? 40.h : 9.h,
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: AppColours.neutral300,
                                    width: 1.sp,
                                  )),
                              duration: const Duration(milliseconds: 200),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Divider(
                                      height: 15,
                                      color: Colors.transparent,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Lorem ipsum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Iconsax.arrow_down_1)
                                        ],
                                      ),
                                    ),
                                    const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected1 = !selected1;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AnimatedContainer(
                              width: selected1 ? 90.w : 90.w,
                              height: selected1 ? 40.h : 9.h,
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: AppColours.neutral300,
                                    width: 1.sp,
                                  )),
                              duration: const Duration(milliseconds: 200),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Divider(
                                      height: 15,
                                      color: Colors.transparent,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Lorem ipsum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Iconsax.arrow_down_1)
                                        ],
                                      ),
                                    ),
                                    const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected2 = !selected2;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AnimatedContainer(
                              width: selected2 ? 90.w : 90.w,
                              height: selected2 ? 40.h : 9.h,
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: AppColours.neutral300,
                                    width: 1.sp,
                                  )),
                              duration: const Duration(milliseconds: 200),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Divider(
                                      height: 15,
                                      color: Colors.transparent,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Lorem ipsum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Iconsax.arrow_down_1)
                                        ],
                                      ),
                                    ),
                                    const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected3 = !selected3;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AnimatedContainer(
                              width: selected3 ? 90.w : 90.w,
                              height: selected3 ? 40.h : 9.h,
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: AppColours.neutral300,
                                    width: 1.sp,
                                  )),
                              duration: const Duration(milliseconds: 200),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Divider(
                                      height: 15,
                                      color: Colors.transparent,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Lorem ipsum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Iconsax.arrow_down_1)
                                        ],
                                      ),
                                    ),
                                    const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
