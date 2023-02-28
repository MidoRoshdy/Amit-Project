import 'package:amit_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/colors.dart';

class TypeOfWork extends StatefulWidget {
  const TypeOfWork({super.key});

  @override
  State<TypeOfWork> createState() => _TypeOfWorkState();
}

class _TypeOfWorkState extends State<TypeOfWork> {
  @override
  Widget build(BuildContext context) {
    int radioValue = 1;
    bool clicked = false;
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Stack(children: [
                  SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Column(children: [
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
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500)),
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
                                  child: CircleAvatar(
                                    radius: 24.sp,
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      "2",
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
                                  backgroundColor: AppColours.neutral400,
                                  child: CircleAvatar(
                                    radius: 24.sp,
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: AppColours.neutral400,
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
                                        color: AppColours.neutral500))
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
                          height: 60.h,
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Type Of Work",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Divider(
                                  height: 1.h,
                                  color: Colors.transparent,
                                ),
                                Text(
                                  "Fill in your bio data correctly",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColours.neutral500),
                                ),
                                Divider(
                                  height: 2.h,
                                  color: Colors.transparent,
                                ),
                                /////////////ListView////////////////////////////
                                SizedBox(
                                  width: 100.w,
                                  height: 45.h,
                                  child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              radioValue = index;
                                            });
                                          },
                                          child: Container(
                                              padding: EdgeInsets.all(3.w),
                                              height: 12.h,
                                              decoration: BoxDecoration(
                                                  color: radioValue == index
                                                      ? AppColours.primary100
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      width: 1.sp,
                                                      color: radioValue == index
                                                          ? AppColours
                                                              .primary500
                                                          : AppColours
                                                              .neutral300)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Senior UI Designer",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "CV.pdf • Portfolio.pdf",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: AppColours
                                                                .neutral500),
                                                      ),
                                                    ],
                                                  ),
                                                  Radio(
                                                    activeColor:
                                                        AppColours.primary500,
                                                    toggleable: false,
                                                    value: index,
                                                    groupValue: radioValue,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        value == null
                                                            ? null
                                                            : radioValue =
                                                                value;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          color: Colors.transparent,
                                          height: 2.h,
                                        );
                                      },
                                      itemCount: 6),
                                ),
                              ]),
                        ),
                        /////////////////////////next butten /////////////////////////////////////////
                        SizedBox(
                          width: 90.w,
                          height: 7.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.uploadportfolio);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColours.primary500,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ]))
                ]))));
  }
}
