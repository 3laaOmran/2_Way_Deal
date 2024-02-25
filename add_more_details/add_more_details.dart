import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:two_way_deal/modules/seller_details/signup_completed/signup_completed.dart';
import 'package:two_way_deal/shared/components/components.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

class AddMoreDetails extends StatefulWidget {
  const AddMoreDetails({super.key});

  @override
  State<AddMoreDetails> createState() => _AddMoreDetailsState();
}

class _AddMoreDetailsState extends State<AddMoreDetails> {
  var addressController = TextEditingController();

  var streetController = TextEditingController();

  var codeController = TextEditingController();

  var cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_image.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Step 3',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30.0),
                  ),
                  Text(
                    'add more details',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Add Restaurant Logo',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 19.0, fontWeight: FontWeight.w100),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        width: 238.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: imagePick == null
                                ? null
                                : DecorationImage(image: FileImage(imagePick!)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25.0)),
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25.0)),
                            border: Border.all(color: myColor, width: 1.0)),
                        child: CircleAvatar(
                          radius: 17.0,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              pickImage();
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 20.0,
                              color: myColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Address',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 19.0, fontWeight: FontWeight.w100),
                  ),
                  Container(
                    width: 344.0,
                    height: 49.0,
                    child: TextFormField(
                        controller: addressController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            hintText: 'Address1',
                            fillColor: Colors.white,
                            filled: true,
                            hoverColor: myColor),
                        keyboardType: TextInputType.text,
                        cursorColor: myColor,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        }),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 344.0,
                          height: 49.0,
                          child: TextFormField(
                              controller: streetController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    ),
                                  ),
                                  hintText: 'Street',
                                  fillColor: Colors.white,
                                  filled: true),
                              keyboardType: TextInputType.text,
                              cursorColor: myColor,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your street';
                                }
                                return null;
                              }),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          width: 344.0,
                          height: 49.0,
                          child: TextFormField(
                              controller: codeController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.0),
                                  ),
                                ),
                                hintText: 'Zip Code',
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              keyboardType: TextInputType.number,
                              cursorColor: myColor,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your zip code';
                                }
                                return null;
                              }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 344.0,
                    height: 49.0,
                    child: TextFormField(
                        controller: cityController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            hintText: 'City',
                            fillColor: Colors.white,
                            filled: true),
                        keyboardType: TextInputType.text,
                        cursorColor: myColor,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your city';
                          }
                          return null;
                        }),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  defaultButton(
                    text: 'Next',
                    context: context,
                    function: () {
                      navigateTo(context, const SignUpCompleted());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  File? imagePick;
  void pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imagePick = File(image!.path);
    });
  }
}
