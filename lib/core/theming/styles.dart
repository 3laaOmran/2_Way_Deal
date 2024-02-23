import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/theming/colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font45blackbold = TextStyle(
    fontSize: 45.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font20blackbold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font20Whitebold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle font15BlackRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
    fontFamily: 'Comfortaa',
  );

  static TextStyle font15MainOrangeRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.mainOrange,
    fontFamily: 'Comfortaa',
  );
}
