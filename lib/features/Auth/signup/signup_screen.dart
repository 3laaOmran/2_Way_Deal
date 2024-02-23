import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/helpers/extensions.dart';
import 'package:two_way_deal/core/helpers/spacing.dart';
import 'package:two_way_deal/core/routing/routes.dart';
import 'package:two_way_deal/core/theming/colors.dart';
import 'package:two_way_deal/core/utils/const.dart';
import 'package:two_way_deal/features/Auth/signup/bloc/signup_bloc.dart';
import 'package:two_way_deal/features/widget/custom_Elevated_button.dart';
import 'package:two_way_deal/features/widget/custom_text_form_field.dart';
import 'package:two_way_deal/features/widget/resuable_text.dart';
import 'package:two_way_deal/features/widget/signup_and_login_footer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController restuarantController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: "signupScreenKey");

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(images["backgroundimage"]!),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20.h),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.15,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 30.sp,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Create a new account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSpace(30),
                      BlocBuilder<SignUpBloc, SignUpState>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              resuableText(
                                text: "Restaurant Name",
                                fontsize: 17.sp,
                              ),
                              CustomTextFormField(
                                hintText: "Restaurant Name",
                                controller: restuarantController,
                                issecurse: false,
                                icon: Icons.restaurant_menu_rounded,
                                enable: true,
                                typefield: "restuarant",
                              ),
                              resuableText(
                                text: "Email Address",
                                fontsize: 17.sp,
                              ),
                              CustomTextFormField(
                                hintText: "Email Address",
                                controller: emailController,
                                issecurse: false,
                                icon: Icons.email,
                                enable: true,
                                typefield: "email",
                              ),
                              resuableText(text: "Phone", fontsize: 17.sp),
                              CustomTextFormField(
                                hintText: "Phone",
                                controller: passwordController,
                                issecurse: true,
                                icon: Icons.phone,
                                enable: true,
                                typefield: "phone",
                              ),
                              resuableText(text: "Password", fontsize: 17.sp),
                              CustomTextFormField(
                                hintText: "Password",
                                controller: passwordController,
                                issecurse: true,
                                icon: Icons.lock,
                                enable: true,
                                typefield: "password",
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      CustomElevatedButton(
                        text: "Sign Up",
                        buttonWidth: width,
                        buttonheight: height * 0.06,
                        onpressed: () {},
                        color: ColorManager.mainOrange,
                        textcolor: Colors.white,
                      ),
                      verticalSpace(30)
                      // SizedBox(
                      //   height: height * 0.1,
                      // ),
                    ],
                  ),
                ),
              ),
              SignupAndLoginFooter(
                firstText: 'Already have an account ? ',
                secondText: '  Login',
                ontap: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
