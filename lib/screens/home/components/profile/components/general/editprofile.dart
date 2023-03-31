import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:amit_project/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Job/job applied/provider/JobAppliedProvider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                      Text("Edit Profile",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Divider(
                    height: 3.h,
                    color: Colors.transparent,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(Assets.profilepic),
                  ),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  Text(
                    "Change Photo",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColours.primary500),
                  ),
                  Divider(
                    height: 1.h,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56.h,
                      // color: Colors.red,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///////////////////////////Name//////////////////////////
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: AppColours.neutral500),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(bottom: 2.h),
                            alignment: Alignment.center,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1.sp,
                                )),
                            child: TextField(
                              style: TextStyle(fontSize: 14.sp),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "UserName",
                                prefixIcon: Icon(
                                  Iconsax.user,
                                ),
                              ),
                            ),
                          ),
                          //////////////////////////bio////////////////////////////
                          Text(
                            "Bio",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: AppColours.neutral500),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(bottom: 2.h),
                            alignment: Alignment.center,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1.sp,
                                )),
                            child: TextField(
                              style: TextStyle(fontSize: 14.sp),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Bio",
                                prefixIcon: Icon(
                                  Iconsax.text,
                                ),
                              ),
                            ),
                          ),
                          //////////////////////////address////////////////////////
                          Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: AppColours.neutral500),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(bottom: 2.h),
                            alignment: Alignment.center,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1.sp,
                                )),
                            child: TextField(
                              style: TextStyle(fontSize: 14.sp),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Address",
                                prefixIcon: Icon(
                                  Iconsax.global,
                                ),
                              ),
                            ),
                          ),
                          //////////////////////////Number/////////////////////////
                          Text(
                            "No.Handphone",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: AppColours.neutral500),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 1.w),
                            margin: EdgeInsets.only(top: 2.h),
                            alignment: Alignment.center,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.sp, color: AppColours.neutral300)),
                            child: InternationalPhoneNumberInput(
                              keyboardType: TextInputType.number,
                              onSaved: context
                                  .read<JobAppliedProvider>()
                                  .onPhoneNumberChange,
                              selectorConfig: const SelectorConfig(
                                selectorType: PhoneInputSelectorType.DROPDOWN,
                              ),
                              ignoreBlank: true,
                              onInputChanged: context
                                  .read<JobAppliedProvider>()
                                  .onPhoneNumberChange,
                              inputBorder: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90.w,
                    height: 7.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            App_Routes.profile, (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          backgroundColor: AppColours.primary600),
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //icon photo
          Positioned(
            right: 19.2.h,
            bottom: 74.5.h,
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(120, 59, 57, 57),
              radius: 50,
              child: Icon(
                Iconsax.camera,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
