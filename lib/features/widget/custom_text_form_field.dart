import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/theming/colors.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final String typefield;
  final TextEditingController controller;
  final String? Function(String? value)? valider;
  bool issecurse;
  final IconData icon;
  final bool enable;
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.valider,
    required this.issecurse,
    required this.icon,
    required this.enable,
    required this.typefield,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  IconData iconsuffix = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h, bottom: 10.h),
      width: 340.w,
      child: TextFormField(
        enabled: widget.enable,
        obscureText: widget.issecurse,
        controller: widget.controller,
        cursorColor: Theme.of(context).primaryColor,
        validator: widget.valider,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          hintText: widget.hintText,
          suffixIcon: widget.typefield == "password"
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.issecurse = !widget.issecurse;
                      iconsuffix = iconsuffix == Icons.visibility
                          ? Icons.visibility_off
                          : Icons.visibility;
                    });
                  },
                  icon: Icon(iconsuffix, color: ColorManager.mainOrange))
              : const SizedBox(
                  width: 5,
                  height: 10,
                ),
          filled: true,
          contentPadding: const EdgeInsets.all(17.0),
          fillColor: Colors.white,
          prefixIcon: widget.typefield == "phone"
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      widget.icon,
                      color: ColorManager.mainOrange,
                    ),
                    Text(
                      " +20\t",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              : Icon(
                  widget.icon,
                  color: ColorManager.mainOrange,
                ),
          focusColor: ColorManager.mainOrange,
        ),
      ),
    );
  }
}
