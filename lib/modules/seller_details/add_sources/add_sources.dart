import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:two_way_deal/modules/seller_details/add_more_details/add_more_details.dart';
import 'package:two_way_deal/shared/components/components.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

class AddSources extends StatefulWidget {
  const AddSources({super.key});

  @override
  State<AddSources> createState() => _AddSourcesState();
}

class _AddSourcesState extends State<AddSources> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Step 2',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30.0),
              ),
              Text(
                'add your sources',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Health Food Certificate',
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
                'Restaurant License',
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
                        image: imagePick2 == null
                            ? null
                            : DecorationImage(image: FileImage(imagePick2!)),
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
                          pickImage2();
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
                height: 40.0,
              ),
              defaultButton(
                text: 'Next',
                context: context,
                function: () {
                  navigateTo(context, const AddMoreDetails());
                },
              ),
            ],
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

  File? imagePick2;

  void pickImage2() async {
    var image2 = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imagePick2 = File(image2!.path);
    });
  }
}
