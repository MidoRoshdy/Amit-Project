import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../../core/colors.dart';
import '../../../../provider/profileprovider.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
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
                      Text("Email Address",
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Main e-mail address :",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(1.w),
                            margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                            alignment: Alignment.center,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1.sp,
                                )),
                            child: TextField(
                                controller: context
                                    .read<ProfileProvider>()
                                    .state
                                    .emailController,
                                onChanged: context
                                    .read<ProfileProvider>()
                                    .onEmailChange,
                                onSubmitted: context
                                    .read<ProfileProvider>()
                                    .onEmailChange,
                                style: TextStyle(fontSize: 14.sp),
                                decoration: InputDecoration(
                                  prefixIconColor: context
                                              .read<ProfileProvider>()
                                              .state
                                              .email ==
                                          null
                                      ? AppColours.neutral300
                                      : context
                                                  .read<ProfileProvider>()
                                                  .state
                                                  .emailErrorMessage !=
                                              null
                                          ? AppColours.danger500
                                          : AppColours.primary500,
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  prefixIcon: const Icon(
                                    Iconsax.sms,
                                  ),
                                )),
                          ),
                          Divider(
                            height: 2.h,
                            color: Colors.transparent,
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
                    context.read<ProfileProvider>().checkEmail() == true
                        ? context.read<ProfileProvider>().saveEmail(context)
                        : null;
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
