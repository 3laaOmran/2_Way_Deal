import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/utils/const.dart';
import 'package:two_way_deal/features/widget/custom_button_choose_account.dart';
import 'package:two_way_deal/features/widget/resuable_text.dart';

class ChooseAccountType extends StatefulWidget {
  const ChooseAccountType({super.key});

  @override
  State<ChooseAccountType> createState() => _ChooseAccountTypeState();
}

class _ChooseAccountTypeState extends State<ChooseAccountType> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  images["backgroundimage"]!,
                ),
                fit: BoxFit.fill)),
        child: Container(
          margin: EdgeInsets.all(20.h),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.25,
              ),
              resuableText(
                  text: "Welcome to 2waydeal",
                  fontsize: 27.sp,
                  fontWeight: FontWeight.bold),
              resuableText(
                  text: "Who are you?",
                  fontsize: 25.sp,
                  fontWeight: FontWeight.normal),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonAccount(text: "Seller"),
                  CustomButtonAccount(text: "Customer"),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomButtonAccount(text: "Charity"),
            ],
          ),
        ),
      ),
    );
  }
}
