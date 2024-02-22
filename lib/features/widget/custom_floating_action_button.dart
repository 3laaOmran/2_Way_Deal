import 'package:flutter/material.dart';
import 'package:two_way_deal/core/theming/colors.dart';
import 'package:two_way_deal/core/utils/const.dart';

Widget floatingactionButton(
  double width,
  double height,
  String name,
  String herotext,
) {
  return SizedBox(
    width: width * 0.15,
    //height: widget.h*0.01,

    child: FloatingActionButton(
      heroTag: herotext,
      backgroundColor: Colors.white,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: const BorderSide(color: ColorManager.mainOrange),
      ),
      child: CircleAvatar(
        radius: 250,
        backgroundColor: ColorManager.mainOrange,
        backgroundImage: AssetImage("${images[name]}"),
      ),
    ),
  );
}