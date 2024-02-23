import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/helpers/extensions.dart';
import 'package:two_way_deal/core/helpers/spacing.dart';
import 'package:two_way_deal/core/routing/routes.dart';
import 'package:two_way_deal/core/theming/colors.dart';
import 'package:two_way_deal/core/utils/const.dart';
import 'package:two_way_deal/features/Auth/login/login_Bloc/login_bloc.dart';
import 'package:two_way_deal/features/widget/custom_Elevated_button.dart';
import 'package:two_way_deal/features/widget/custom_floating_action_button.dart';
import 'package:two_way_deal/features/widget/custom_text_form_field.dart';
import 'package:two_way_deal/features/widget/resuable_text.dart';
import 'package:two_way_deal/features/widget/signup_and_login_footer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: "loginScreenKey");

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; //height of screen
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(images["backgroundimage"]!),
                fit: BoxFit.fill)),
        child: Container(
          // margin: EdgeInsets.all(20.h),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.15,
                        ),
                        resuableText(
                            text: "Login Now  ",
                            fontsize: 30.sp,
                            letterspacing: 2,
                            fontWeight: FontWeight.bold),
                        resuableText(
                            text: "Welcome Back",
                            fontsize: 17.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              resuableText(
                                  text: "Email Address", fontsize: 17.sp),
                              CustomTextFormField(
                                  hintText: "Email Address",
                                  controller: emailController,
                                  issecurse: false,
                                  icon: Icons.email,
                                  enable: true,
                                  typefield: "email"),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              resuableText(text: "Password", fontsize: 17.sp),
                              CustomTextFormField(
                                  hintText: "Password",
                                  controller: passwordController,
                                  issecurse: true,
                                  icon: Icons.lock,
                                  enable: true,
                                  typefield: "password"),
                            ],
                          );
                        }),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Center(
                          child: resuableText(
                              text: "Forget The Password?",
                              fontsize: 13.sp,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.mainOrange),
                        ),
                        verticalSpace(50),
                        CustomElevatedButton(
                            text: "Log in",
                            buttonWidth: width,
                            buttonheight: height * 0.06,
                            onpressed: () {},
                            color: ColorManager.mainOrange,
                            textcolor: Colors.white),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        // CustomElevatedButton(
                        //     text: "Sign Up",
                        //     buttonWidth: width,
                        //     buttonheight: height * 0.06,
                        //     onpressed: () {
                        //       Navigator.of(context).pushNamed("/signupScreen");
                        //     },
                        //     color: ColorManager.mainOrange,
                        //     textcolor: Colors.white),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Center(
                            child: floatingactionButton(
                                width, height, "google_image", "logingoogle")),
                        verticalSpace(50),
                      ],
                    ),
                  ),
                  SignupAndLoginFooter(
                      firstText: "Don't have account ?? ",
                      secondText: "SignUp",
                      ontap: () {
                        context.pushNamed(Routes.signupScreen);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
