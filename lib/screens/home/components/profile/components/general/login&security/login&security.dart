import 'package:amit_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class LoginAndSecurity extends StatefulWidget {
  const LoginAndSecurity({super.key});

  @override
  State<LoginAndSecurity> createState() => _LoginAndSecurityState();
}

class _LoginAndSecurityState extends State<LoginAndSecurity> {
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
                      Text("Login and security",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 3.h,
                  ),
                  //Accont access
                  Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.grey[300],
                    height: 4.h,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Accont access",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          //email adderss
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.emailaddress);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email address",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 5.h,
                            color: Colors.grey[350],
                          ),
                          //Phone number
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.phonenumber);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Phone number",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 5.h,
                            color: Colors.grey[350],
                          ),
                          //Change password
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.changepassword);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Change password",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 5.h,
                            color: Colors.grey[350],
                          ),
                          //Two-step verification
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(App_Routes.verfication);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Two-step verification",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 5.h,
                            color: Colors.grey[350],
                          ),
                          //Face ID
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Face ID",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Iconsax.arrow_right_1,
                                size: 25,
                              ),
                            ],
                          ),
                          Divider(
                            height: 5.h,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
