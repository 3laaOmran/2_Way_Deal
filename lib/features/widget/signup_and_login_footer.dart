import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:two_way_deal/core/theming/colors.dart';
import 'package:two_way_deal/core/theming/styles.dart';

class SignupAndLoginFooter extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Function() ontap;
  const SignupAndLoginFooter({super.key, required this.firstText, required this.secondText, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorManager.gray,
            spreadRadius: 6,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(80),
        ),
        color: Colors.white,
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: firstText,
                  style: TextStyles.font15BlackRegular),
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = ontap,
                  text: secondText,
                  style: TextStyles.font15MainOrangeRegular),
            ],
          ),
        ),
      ),
    );
  }
}
