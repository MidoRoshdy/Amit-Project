import 'package:amit_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/colors.dart';
import '../providers/create_account_provider.dart';
import '../widgets/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      child: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Divider(
              color: Colors.transparent,
              height: 4.h,
            ),
            //! text
            Text("What type of work are you interested in?",
                softWrap: true,
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold)),
            Divider(
              color: Colors.transparent,
              height: 2.h,
            ),
            Text(
                "Tell us what you're interested in so we can customise the app for your needs.",
                softWrap: true,
                style: TextStyle(
                    color: AppColours.neutral500,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400)),
            Divider(
              color: Colors.transparent,
              height: 4.h,
            ),
            //! categories
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.9.sp,
                crossAxisCount: 2,
                mainAxisSpacing: 1.2.h,
                crossAxisSpacing: 3.w,
              ),
              itemBuilder: (context, index) {
                final item = context
                    .read<CreateAccountProvider>()
                    .state
                    .categories[index];
                return CategoryChoice(item: item);
              },
              itemCount:
                  context.read<CreateAccountProvider>().state.categories.length,
            )),
            Divider(
              color: Colors.transparent,
              height: 4.h,
            ),
            //! next button
            SizedBox(
              width: 90.w,
              height: 7.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(App_Routes.countries);
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
            Divider(
              color: Colors.transparent,
              height: 4.h,
            )
          ],
        ),
      ),
    )));
  }
}
