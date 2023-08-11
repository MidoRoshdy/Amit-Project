import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../../core/colors.dart';
import '../../../../provider/profileprovider.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
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
                      Text("Phone Number",
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
                                  "Main phone number :",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
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
                                      width: 1.sp,
                                      color: AppColours.neutral300)),
                              child: InternationalPhoneNumberInput(
                                countrySelectorScrollControlled: false,
                                onSaved: context
                                    .read<ProfileProvider>()
                                    .onPhoneChange,
                                selectorConfig: const SelectorConfig(
                                  selectorType:
                                      PhoneInputSelectorType.BOTTOM_SHEET,
                                ),
                                onInputChanged: context
                                    .read<ProfileProvider>()
                                    .onPhoneChange,
                                inputBorder: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Divider(
                    height: 2.h,
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Use the phone number to reset your\n password",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColours.neutral500),
                        ),
                        Switch.adaptive(
                          value: context
                              .watch<ProfileProvider>()
                              .state
                              .phoneToResetPass,
                          onChanged: context
                              .read<ProfileProvider>()
                              .phoneToResetPassChange,
                        )
                      ],
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
                    context.read<ProfileProvider>().checkPhone() == true
                        ? context.read<ProfileProvider>().savePhone(context)
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
