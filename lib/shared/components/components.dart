import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

Widget formField({
  required TextEditingController controller,
  String? label,
  IconData? prefix,
  IconData? suffix,
  required TextInputType type,
  required String? Function(String?)? function,
  String? Function(String?)? submit,
  String? Function(String?)? onChanged,
  VoidCallback? pressed,
  VoidCallback? onTap,
  bool isClickable = true,
  bool isPassword = false,
  List<TextInputFormatter>? input,
  String? hintText,
}) =>
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        labelText: label,
        hintText: hintText,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: pressed,
                icon: Icon(
                  suffix,
                  color: myColor,
                  size: 30.0,
                ),
              )
            : null,
      ),
      keyboardType: type,
      obscureText: isPassword,
      validator: function,
      onTap: onTap,
      enabled: isClickable,
      onFieldSubmitted: submit,
      onChanged: onChanged,
      inputFormatters: input,
    );

Widget defaultButton({
  Color color = myColor,
  double width = double.infinity,
  required String text,
  required VoidCallback function,
  required BuildContext context,
}) =>
    SizedBox(
      width: width,
      height: 50.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MaterialButton(
          color: color,
          onPressed: function,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white,
                fontSize: 21.0,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );

Widget cartButton({
  Color color = myColor,
  double width = double.infinity,
  required String text,
  required VoidCallback function,
  required BuildContext context,
}) =>
    SizedBox(
      width: width,
      height: 50.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MaterialButton(
          color: color,
          onPressed: function,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.white,
                fontSize: 21.0,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );

Widget cancelButton({
  Color color = Colors.white,
  double width = double.infinity,
  required String text,
  required VoidCallback function,
  required BuildContext context,
  Color borderColor = myColor,
  double borderWidth = 2.0,
}) =>
    SizedBox(
      width: width,
      height: 50.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MaterialButton(
          color: color,
          onPressed: function,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: myColor, fontSize: 21.0, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );

Widget textButton({
  required String text,
  required VoidCallback function,
  required BuildContext context,
  Color? color,
  double? fontSize,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 13.0, fontWeight: FontWeight.w900, color: myColor),
      ),
    );

void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false);

void itemToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseColorToast(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { success, warning, error }

Color chooseColorToast(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Colors.green;
      break;
    case ToastStates.warning:
      color = Colors.amber;
      break;
    case ToastStates.error:
      color = Colors.red;
      break;
  }
  return color;
}
