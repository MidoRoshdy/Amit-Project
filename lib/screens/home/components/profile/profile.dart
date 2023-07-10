import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:amit_project/core/colors.dart';
import 'package:amit_project/screens/home/components/profile/provider/profileprovider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var provider2 = Provider.of<ProfileProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Divider(
            height: 1.h,
          ),
          Container(
            height: 30.h,
            color: AppColours.primary100,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  height: 2.7.h,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              App_Routes.home, (route) => false);
                        },
                        icon: const Icon(Iconsax.arrow_left4)),
                    Text("profile",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w500)),
                    IconButton(
                        onPressed: () {
                          context
                              .read<ProfileProvider>()
                              .onchange_deletedata(context);
                        },
                        icon: Icon(
                          Iconsax.logout_1,
                          color: AppColours.danger500,
                        ))
                  ],
                ),
                Divider(
                  height: 12.h,
                ),
                CircleAvatar(
                  backgroundImage: const AssetImage(Assets.profilepic),
                  radius: 60,
                  backgroundColor: AppColours.primary300,
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                const Text(
                  "Rafif Dian Axelingga",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                Text(
                  "Senior UI/UX Designer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColours.neutral500),
                ),
                //////////////////////apllied reviewed contacted////////////////////
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColours.neutral200),
                    height: 12.h,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Applied",
                              style: TextStyle(
                                  color: AppColours.neutral600,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Reviewed",
                              style: TextStyle(
                                  color: AppColours.neutral600,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Contacted",
                              style: TextStyle(
                                  color: AppColours.neutral600,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "46",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "23",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "16",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ), //////about///////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About",
                                style: TextStyle(
                                    color: AppColours.neutral500,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                            Text("Edit",
                                style: TextStyle(
                                    color: AppColours.primary500,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Divider(
                          height: 2.h,
                          color: Colors.transparent,
                        ),
                        Text(
                          "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColours.neutral600),
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////Generall//////////////////
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[300],
                  height: 4.h,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "General",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: Column(
                      children: [
                        //Edit profile
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.editprofile);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColours.primary100,
                                  radius: 30,
                                  child: Icon(
                                    Iconsax.user,
                                    color: AppColours.primary500,
                                  )),
                              VerticalDivider(
                                width: 5.w,
                              ),
                              const Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              VerticalDivider(
                                width: 45.w,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.h,
                          color: Colors.transparent,
                        ),
                        //portfolio
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.portfolio);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColours.primary100,
                                  radius: 30,
                                  child: Icon(
                                    Iconsax.folder_favorite,
                                    color: AppColours.primary500,
                                  )),
                              VerticalDivider(
                                width: 5.w,
                              ),
                              const Text(
                                "Portfolio",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              VerticalDivider(
                                width: 49.w,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.h,
                          color: Colors.transparent,
                        ),
                        //language
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.langaugeprofile);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColours.primary100,
                                  radius: 30,
                                  child: Icon(
                                    Iconsax.global,
                                    color: AppColours.primary500,
                                  )),
                              VerticalDivider(
                                width: 5.w,
                              ),
                              const Text(
                                "Langauge",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              VerticalDivider(
                                width: 47.w,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.h,
                          color: Colors.transparent,
                        ),
                        //notification
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.notificationsprofile);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColours.primary100,
                                  radius: 30,
                                  child: Icon(
                                    Iconsax.notification,
                                    color: AppColours.primary500,
                                  )),
                              VerticalDivider(
                                width: 5.w,
                              ),
                              const Text(
                                "Notification",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              VerticalDivider(
                                width: 44.w,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.h,
                          color: Colors.transparent,
                        ),
                        //login and security
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(App_Routes.loginandsecurity);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColours.primary100,
                                  radius: 30,
                                  child: Icon(
                                    Iconsax.lock,
                                    color: AppColours.primary500,
                                  )),
                              VerticalDivider(
                                width: 5.w,
                              ),
                              const Text(
                                "Login and security",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              VerticalDivider(
                                width: 32.w,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.h,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
                ///////////////////////////////////others/////////////////////////////////
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[300],
                  height: 4.h,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Others",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: Column(children: [
                      //Accesibility
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Accesibility",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Icon(Iconsax.arrow_right_1)
                        ],
                      ),
                      Divider(
                        height: 2.h,
                      ),
                      //Help Center
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.helpcenter);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Help Center",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Icon(Iconsax.arrow_right_1)
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.h,
                      ),
                      //Terms & Conditions
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.termsandconditions);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Terms & Conditions",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Icon(Iconsax.arrow_right_1)
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.h,
                      ),
                      //Privacy Policy
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.privacypolicy);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Privacy Policy",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Icon(Iconsax.arrow_right_1)
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.h,
                      ),
                      //complete profile
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(App_Routes.completeprofile);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Complete Profile",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Icon(Iconsax.arrow_right_1)
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
