import 'package:flutter/material.dart';
import 'package:olocker_demo/utils/appimages.dart';
import 'package:olocker_demo/utils/extension_method.dart';

class TitleAboutPage extends StatelessWidget {
  final String text;
  Image? images;

  TitleAboutPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              AppImages.about_bg,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ).commonSymmetricSidePadding(horizontal: 10),
          ],
        ),
      ],
    );
  }
}
