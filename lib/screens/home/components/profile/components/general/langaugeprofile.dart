import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/colors.dart';

class LangaugeProfile extends StatefulWidget {
  const LangaugeProfile({super.key});

  @override
  State<LangaugeProfile> createState() => _LangaugeProfileState();
}

class _LangaugeProfileState extends State<LangaugeProfile> {
  @override
  Widget build(BuildContext context) {
    int radioValue = 1;
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
                        Text("Langauge",
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    //English
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_england,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text(
                                  "English",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 1,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Indonesia
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_indonesia,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Indonesia",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 2,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Arabic
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_saudiarabia,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Arabic",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 3,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Chinese
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_china,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Chinese",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 4,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Dutch
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_netherland,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Dutch",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 5,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Germen
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_germen,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Germen",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 6,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 6;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Japanese
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_japan,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Japanese",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 7,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 7;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Korean
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_southkorea,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Korean",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 8,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 8;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.black,
                    ),
                    //Portugese
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.lan_portugal,
                                  scale: 1.2.sp,
                                ),
                                VerticalDivider(
                                  width: 1.5.w,
                                  color: Colors.transparent,
                                ),
                                const Text("Portuguese",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Radio(
                              activeColor: AppColours.primary500,
                              toggleable: false,
                              value: 9,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 9;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
