import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/colors.dart';
import '../providers/create_account_provider.dart';

// ignore: must_be_immutable
class CategoryChoice extends StatelessWidget {
  final Map<String, dynamic>? item;

  const CategoryChoice({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Consumer<CreateAccountProvider>(builder: (context, provider, _) {
      return InkWell(
        onTap: () {
          context.read<CreateAccountProvider>().selectCategory(item!);
        },
        child: Container(
            padding: EdgeInsets.only(left: 10.sp, right: 0.sp),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: provider.state.selectedCategories.contains(item)
                    ? AppColours.primary100
                    : AppColours.neutral100,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: provider.state.selectedCategories.contains(item)
                      ? AppColours.primary500
                      : AppColours.neutral300,
                  width: 2.sp,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: AppColours.neutral300,
                  radius: 20.sp,
                  child: CircleAvatar(
                      radius: 18.sp,
                      backgroundColor: AppColours.neutral100,
                      foregroundColor:
                          provider.state.selectedCategories.contains(item)
                              ? AppColours.primary500
                              : AppColours.neutral300,
                      child: item!["icon"]),
                ),
                Divider(
                  color: Colors.transparent,
                  height: 2.h,
                ),
                Text(
                  item!["name"],
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                )
              ],
            )),
      );
    });
  }
}

class CountryChoice extends StatefulWidget {
  final int? index;

  const CountryChoice({super.key, required this.index});

  @override
  State<CountryChoice> createState() => _CountryChoiceState();
}

class _CountryChoiceState extends State<CountryChoice> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          context.read<CreateAccountProvider>().selectCountry(widget.index!);
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Container(
            padding: EdgeInsets.all(5.sp),
            height: 7.h,
            decoration: BoxDecoration(
                color: isTapped ? AppColours.primary100 : AppColours.neutral100,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color:
                      isTapped ? AppColours.primary500 : AppColours.neutral300,
                  width: 2.sp,
                )),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 15.sp,
                  backgroundImage: AssetImage(context
                      .read<CreateAccountProvider>()
                      .state
                      .countries
                      .values
                      .elementAt(widget.index!)
                      .values
                      .elementAt(1)),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  context
                      .read<CreateAccountProvider>()
                      .state
                      .countries
                      .values
                      .elementAt(widget.index!)
                      .values
                      .elementAt(0),
                  style: const TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            )));
  }
}

List<Widget> getCountries(BuildContext context) {
  List<Widget> countries = [];
  for (int i = 0;
      i < context.read<CreateAccountProvider>().state.countries.values.length;
      i++) {
    countries.add(CountryChoice(index: i));
  }
  return countries;
}
