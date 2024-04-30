import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:two_way_deal/modules/seller_details/add_sources/add_sources.dart';
import 'package:two_way_deal/modules/seller_details/login/login.dart';
import 'package:two_way_deal/shared/components/components.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

class ConfirmAccount extends StatefulWidget {
  const ConfirmAccount({super.key});

  @override
  State<ConfirmAccount> createState() => _ConfirmAccountState();
}

class _ConfirmAccountState extends State<ConfirmAccount> {
  var controller1 = TextEditingController();

  var controller2 = TextEditingController();

  var controller3 = TextEditingController();

  var controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 122.0,
                  ),
                  Text(
                    'Confirm Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30.0),
                  ),
                  Text(
                    'we\'ve sent you code to your Email',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 45.0,
                  ),
                  Text(
                    'Your Code',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 19.0, fontWeight: FontWeight.w100),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                            controller: controller1,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              fillColor: myColor,
                            ),
                            keyboardType: TextInputType.number,
                            cursorColor: myColor,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please fill this blank';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextFormField(
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            controller: controller2,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              fillColor: myColor,
                            ),
                            cursorColor: myColor,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please fill this blank';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextFormField(
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            controller: controller3,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              fillColor: myColor,
                            ),
                            cursorColor: myColor,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please fill this blank';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextFormField(
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            controller: controller4,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              fillColor: myColor,
                            ),
                            cursorColor: myColor,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please fill this blank';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'didn\'t receive anything?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  defaultButton(
                    text: 'Next',
                    context: context,
                    function: () {
                      navigateTo(context, const AddSources());
                    },
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                    width: 270.0,
                    child: Text(
                      'by clicking "Next" you agree to our terms of service and privacy statement',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: 14.0, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an email?',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 13.0, fontWeight: FontWeight.w100),
                  ),
                  textButton(
                    context: context,
                    text: 'Log in',
                    function: () {
                      setState(() {
                        navigateTo(context, const LogIn());
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
