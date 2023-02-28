import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/colors.dart';
import 'package:amit_project/screens/Job/job%20applied/provider/JobAppliedProvider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class JobApplied extends StatefulWidget {
  const JobApplied({super.key});

  @override
  State<JobApplied> createState() => _JobAppliedState();
}

class _JobAppliedState extends State<JobApplied> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SingleChildScrollView(
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
                      //3 circle///
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 25.sp,
                                backgroundColor: AppColours.primary500,
                                child: CircleAvatar(
                                  radius: 24.sp,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "1",
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
                                backgroundColor: AppColours.neutral400,
                                child: CircleAvatar(
                                  radius: 24.sp,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "2",
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
                              Text("Type of Work",
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColours.neutral500))
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
                      //////////////////////////////////but data///////////////////////
                      Container(
                        alignment: Alignment.topLeft,
                        height: 60.h,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "BioData",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
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
                            //////////////////////////////fullname//////////////////////////////////////
                            Text("Full name*",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColours.neutral500)),
                            Container(
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                              alignment: Alignment.center,
                              height: 8.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.sp,
                                      color: context
                                                  .watch<JobAppliedProvider>()
                                                  .state
                                                  .name ==
                                              null
                                          ? AppColours.neutral300
                                          : context
                                                      .watch<
                                                          JobAppliedProvider>()
                                                      .state
                                                      .nameErrorMessage !=
                                                  null
                                              ? AppColours.danger500
                                              : AppColours.primary500)),
                              child: TextField(
                                controller: context
                                    .read<JobAppliedProvider>()
                                    .state
                                    .nameController,
                                onChanged: context
                                    .read<JobAppliedProvider>()
                                    .onNameChange,
                                onSubmitted: context
                                    .read<JobAppliedProvider>()
                                    .onNameChange,
                                style: TextStyle(fontSize: 14.sp),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Full Name",
                                  prefixIcon: const Icon(
                                    Iconsax.user,
                                  ),
                                  prefixIconColor: context
                                              .watch<JobAppliedProvider>()
                                              .state
                                              .name ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .watch<JobAppliedProvider>()
                                                  .state
                                                  .nameErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                ),
                              ),
                            ),
                            Divider(
                              height: 2.h,
                              color: Colors.transparent,
                            ),
                            //////////////////////////////////email//////////////////////////////////////
                            Text("Email*",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColours.neutral500)),
                            Container(
                              padding: EdgeInsets.all(1.w),
                              margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                              alignment: Alignment.center,
                              height: 8.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.sp,
                                      color: context
                                                  .watch<JobAppliedProvider>()
                                                  .state
                                                  .email ==
                                              null
                                          ? AppColours.neutral300
                                          : context
                                                      .watch<
                                                          JobAppliedProvider>()
                                                      .state
                                                      .emailErrorMessage !=
                                                  null
                                              ? AppColours.danger500
                                              : AppColours.primary500)),
                              child: TextField(
                                controller: context
                                    .read<JobAppliedProvider>()
                                    .state
                                    .emailController,
                                onChanged: context
                                    .read<JobAppliedProvider>()
                                    .onEmailChange,
                                onSubmitted: context
                                    .read<JobAppliedProvider>()
                                    .onEmailChange,
                                style: TextStyle(fontSize: 14.sp),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  prefixIcon: const Icon(
                                    Iconsax.sms4,
                                  ),
                                  prefixIconColor: context
                                              .watch<JobAppliedProvider>()
                                              .state
                                              .email ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .watch<JobAppliedProvider>()
                                                  .state
                                                  .emailErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                ),
                              ),
                            ),
                            Divider(
                              height: 2.h,
                              color: Colors.transparent,
                            ),
                            ////////////////////////////number phone /////////////////////////////////////////////
                            Text("No.Handphone*",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColours.neutral500)),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 1.w),
                              margin: EdgeInsets.only(top: 2.h),
                              alignment: Alignment.center,
                              height: 8.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.sp,
                                      color: AppColours.neutral300)),
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
                      /////////////////////////////////////// next butten ////////////////////////////
                      SizedBox(
                        width: 90.w,
                        height: 7.h,
                        child: ElevatedButton(
                          onPressed: context
                                      .read<JobAppliedProvider>()
                                      .validateBiodata() ==
                                  true
                              ? () {
                                  Navigator.of(context)
                                      .pushNamed(App_Routes.typeofwork);
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: context
                                          .read<JobAppliedProvider>()
                                          .validateBiodata() ==
                                      true
                                  ? AppColours.primary500
                                  : AppColours.neutral300,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: context
                                            .read<JobAppliedProvider>()
                                            .validateBiodata() ==
                                        true
                                    ? Colors.white
                                    : AppColours.neutral500,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
              ))),
    );
  }
}
