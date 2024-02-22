import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/theming/colors.dart';

class CustomButtonAccount extends StatefulWidget {
  String? text;

  CustomButtonAccount({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<CustomButtonAccount> createState() => _CustomButtonAccountState();
}

class _CustomButtonAccountState extends State<CustomButtonAccount> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: ColorManager.mainOrange),
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
            Navigator.of(context).pushNamedAndRemoveUntil(
                "/loginScreen", (route) => false);
          });
        },
        style: ElevatedButton.styleFrom(
          primary: isPressed
              ? ColorManager.mainOrange
              : Colors.white, // Change color dynamically
        ),
        child: Text(
          widget.text!,
          style: TextStyle(
              fontSize: 20.sp,
              color: isPressed ? Colors.white : ColorManager.mainOrange),
        ),
      ),
    );
  }
}
