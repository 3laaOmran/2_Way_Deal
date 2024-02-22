import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font50blackbold = TextStyle(
    fontSize: 20.sp,
  
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font20blackbold = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Comfortaa',
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font20Whitebold = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Comfortaa',
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
}
