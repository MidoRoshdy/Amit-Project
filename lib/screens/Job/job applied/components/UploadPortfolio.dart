import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/colors.dart';

class UploadPortfolio extends StatefulWidget {
  const UploadPortfolio({super.key});

  @override
  State<UploadPortfolio> createState() => _UploadPortfolioState();
}

class _UploadPortfolioState extends State<UploadPortfolio> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Stack(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Column(
                children: [
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Iconsax.arrow_left4)),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text("Apply Job",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25.sp,
                            backgroundColor: AppColours.primary500,
                            child: const SizedBox.expand(
                              child: FittedBox(
                                child: Icon(Icons.check_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Text(
                            "BioData",
                            style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColours.primary500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25.sp,
                            backgroundColor: AppColours.primary500,
                            child: const SizedBox.expand(
                              child: FittedBox(
                                child: Icon(Icons.check_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Text("Type of Work",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColours.primary500,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25.sp,
                            backgroundColor: AppColours.primary500,
                            child: CircleAvatar(
                              radius: 24.sp,
                              backgroundColor: Colors.white,
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: AppColours.primary500,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Text("Upload portfolio",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColours.primary500,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 70.h,
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upload portfolio",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Text(
                            "Fill in your bio data correctly",
                            style: TextStyle(
                                fontSize: 16, color: AppColours.neutral500),
                          ),
                          Divider(
                            height: 2.h,
                            color: Colors.transparent,
                          ),
                          ///////////////////////portfolio////////////////////////////
                          Container(
                            width: 90.w,
                            height: 10.h,
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
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                            height: 4.h,
                          ),
                          /////////////////////uploud portfolio////////////////////////////
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
                                  color:
                                      const Color.fromRGBO(236, 242, 255, 100),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                    color:
                                                        AppColours.primary500,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                )),
                          ),
                          Divider(
                            height: 7.h,
                          ),
                          //////////////////////////////// submit button//////////////////
                          SizedBox(
                            width: 90.w,
                            height: 7.h,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    App_Routes.succsessjob, (route) => false);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColours.primary500,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
