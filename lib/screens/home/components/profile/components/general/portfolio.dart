import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/assets.dart';
import '../../../../../../core/colors.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
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
                      width: 25.w,
                    ),
                    Text("Portfolio",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  ],
                ),
                Divider(
                  height: 4.h,
                  color: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 3.h,
                    width: double.infinity,
                    child: const Text(
                      "Add portfolio here",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  height: 2.h,
                  color: Colors.transparent,
                ),
                ///////////////////////// Uploud portfolio /////////////////////
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 10],
                  color: AppColours.primary400,
                  strokeWidth: 1.sp,
                  child: Container(
                      width: 90.w,
                      height: 30.h,
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 242, 255, 100),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 20.sp,
                            backgroundColor: AppColours.primary100,
                            child: Icon(
                              Iconsax.document_upload5,
                              color: AppColours.primary500,
                              size: 28.sp,
                            ),
                          ),
                          Text("Upload your other file",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500)),
                          Text(
                            "Max. file size 10 MB",
                            style: TextStyle(
                                fontSize: 9.5.sp,
                                color: AppColours.neutral500,
                                fontWeight: FontWeight.w400),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                width: 80.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                    color: AppColours.primary100,
                                    border: Border.all(
                                        width: 1.sp,
                                        color: AppColours.primary500),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                        color: AppColours.primary500,
                                        Iconsax.export_1),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      "Add File",
                                      style: TextStyle(
                                          color: AppColours.primary500,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      )),
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                            height: 9.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.sp, color: AppColours.neutral300)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.w,
                                ),
                                Image.asset(Assets.PDF, scale: 1.sp),
                                SizedBox(
                                  width: 2.w,
                                ),
                                SizedBox(
                                  height: 6.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("CV.pdf",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: AppColours.neutral600,
                                              fontWeight: FontWeight.w400)),
                                      Text("CV.pdf 300KB",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: AppColours.neutral600,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    iconSize: 20.sp,
                                    onPressed: () {},
                                    color: Colors.white,
                                    icon: Icon(
                                      Iconsax.edit_24,
                                      color: AppColours.primary500,
                                    )),
                                IconButton(
                                    iconSize: 20.sp,
                                    onPressed: () {},
                                    color: Colors.white,
                                    icon: Icon(
                                      Iconsax.close_circle4,
                                      color: AppColours.danger500,
                                    ))
                              ],
                            )),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 0.0.h,
                        color: Colors.transparent,
                      );
                    },
                    itemCount: 3)
              ],
            ),
          )
        ],
      )),
    );
  }
}
