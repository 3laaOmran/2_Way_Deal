import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/extensions.dart';
import '../../core/helpers/spacing.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/custom_button.dart';
import 'widgets/onboarding_model_list.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _controller,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemCount: onboardingContentList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              onboardingContentList[index].image,
                            ),
                            verticalSpace(40),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 25.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    onboardingContentList[index].mainText,
                                    style: TextStyles.font50blackbold,
                                  ),
                                  Text(
                                    onboardingContentList[index].smallText,
                                    style: TextStyles.font20blackbold,
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(onboardingContentList.length,
                          (index) => buildDots(index, context))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(40),
                    child: AppTextButton(
                      buttonText:
                          currentIndex == onboardingContentList.length - 1
                              ? 'Get Started'
                              : 'Next',
                      textStyle: TextStyles.font20Whitebold,
                      onPressed: () {
                        if (currentIndex == onboardingContentList.length - 1) {
                          context.pushNamed(Routes.loginScreen);
                        }
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.bounceIn);
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 10.h,
                  right: 15.w,
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyles.font20Whitebold,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 10.h,
      width: 10.w,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : ColorManager.gray,
      ),
    );
  }
}
