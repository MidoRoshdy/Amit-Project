import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../../core/colors.dart';
import '../../../../../../../user_handel/login/provider/LoginProvider.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                  //header
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Iconsax.arrow_left4)),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text("Change Password",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Divider(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text("Enter your old password :",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))
                            ],
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
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.sp,
                                    color: context
                                                .watch<LoginProvider>()
                                                .state
                                                .password ==
                                            null
                                        ? AppColours.neutral300
                                        : context
                                                    .watch<LoginProvider>()
                                                    .state
                                                    .passwordErrorMessage !=
                                                null
                                            ? AppColours.danger500
                                            : AppColours.primary500)),
                            child: TextField(
                              obscureText:
                                  context.watch<LoginProvider>().state.hidePass,
                              controller: context
                                  .read<LoginProvider>()
                                  .state
                                  .passwordController,
                              onChanged: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              onSubmitted: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              style: TextStyle(fontSize: 14.sp),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  prefixIcon: const Icon(
                                    Iconsax.lock,
                                  ),
                                  prefixIconColor: context
                                              .watch<LoginProvider>()
                                              .state
                                              .password ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .watch<LoginProvider>()
                                                  .state
                                                  .passwordErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                  suffixIcon: IconButton(
                                    onPressed: () => context
                                        .read<LoginProvider>()
                                        .showPassword(),
                                    icon: context
                                                .watch<LoginProvider>()
                                                .state
                                                .hidePass ==
                                            true
                                        ? const Icon(Iconsax.eye_slash4)
                                        : const Icon(Iconsax.eye3),
                                  )),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Row(
                            children: const [
                              Text("Enter your new password :",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ],
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
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.sp,
                                    color: context
                                                .watch<LoginProvider>()
                                                .state
                                                .password ==
                                            null
                                        ? AppColours.neutral300
                                        : context
                                                    .watch<LoginProvider>()
                                                    .state
                                                    .passwordErrorMessage !=
                                                null
                                            ? AppColours.danger500
                                            : AppColours.primary500)),
                            child: TextField(
                              obscureText:
                                  context.watch<LoginProvider>().state.hidePass,
                              controller: context
                                  .read<LoginProvider>()
                                  .state
                                  .passwordController,
                              onChanged: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              onSubmitted: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              style: TextStyle(fontSize: 14.sp),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  prefixIcon: const Icon(
                                    Iconsax.lock,
                                  ),
                                  prefixIconColor: context
                                              .watch<LoginProvider>()
                                              .state
                                              .password ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .watch<LoginProvider>()
                                                  .state
                                                  .passwordErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                  suffixIcon: IconButton(
                                    onPressed: () => context
                                        .read<LoginProvider>()
                                        .showPassword(),
                                    icon: context
                                                .watch<LoginProvider>()
                                                .state
                                                .hidePass ==
                                            true
                                        ? const Icon(Iconsax.eye_slash4)
                                        : const Icon(Iconsax.eye3),
                                  )),
                            ),
                          ),
                          Row(
                            children: const [
                              Text("Confirm your new password :",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))
                            ],
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
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.sp,
                                    color: context
                                                .watch<LoginProvider>()
                                                .state
                                                .password ==
                                            null
                                        ? AppColours.neutral300
                                        : context
                                                    .watch<LoginProvider>()
                                                    .state
                                                    .passwordErrorMessage !=
                                                null
                                            ? AppColours.danger500
                                            : AppColours.primary500)),
                            child: TextField(
                              obscureText:
                                  context.watch<LoginProvider>().state.hidePass,
                              controller: context
                                  .read<LoginProvider>()
                                  .state
                                  .passwordController,
                              onChanged: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              onSubmitted: context
                                  .read<LoginProvider>()
                                  .onPasswordChange,
                              style: TextStyle(fontSize: 14.sp),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  prefixIcon: const Icon(
                                    Iconsax.lock,
                                  ),
                                  prefixIconColor: context
                                              .watch<LoginProvider>()
                                              .state
                                              .password ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .watch<LoginProvider>()
                                                  .state
                                                  .passwordErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                  suffixIcon: IconButton(
                                    onPressed: () => context
                                        .read<LoginProvider>()
                                        .showPassword(),
                                    icon: context
                                                .watch<LoginProvider>()
                                                .state
                                                .hidePass ==
                                            true
                                        ? const Icon(Iconsax.eye_slash4)
                                        : const Icon(Iconsax.eye3),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: SizedBox(
                width: 90.w,
                height: 7.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: AppColours.primary600),
                  child: Text(
                    "Save",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
