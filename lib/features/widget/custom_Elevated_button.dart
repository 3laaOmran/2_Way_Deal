
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double buttonWidth;
  final double buttonheight;
  final VoidCallback onpressed;
  var color;
  final Color textcolor;

   CustomElevatedButton({
    Key? key,
    required this.text,
    required this.buttonWidth,
    required this.buttonheight,
    required this.onpressed,
    required this.color, required this.textcolor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:buttonheight ,
      width: buttonWidth ,
      child: ElevatedButton(
        
        onPressed:onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
         shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(30)
         )
        ),
        child:  Text(text,style: TextStyle(color: textcolor),),
      ),
    );
  }
}
