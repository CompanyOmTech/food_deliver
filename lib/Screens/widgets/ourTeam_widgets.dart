import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:olocker_demo/utils/appimages.dart';
import 'package:olocker_demo/utils/extension_method.dart';

class OurTeamDetailsPage extends StatelessWidget {
  Image? image;
  final String textname;
  final String text;

  Color? color;

  OurTeamDetailsPage(
      {Key? key,
      required this.textname,
      required this.text,
      this.color = Colors.white,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: Get.size.height / 9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
        ).commonOnlyPadding(left: 30),
     const   Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundImage: AssetImage(AppImages.circleimage),
            radius: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: Get.size.width * 0.22,
            right: Get.size.width * 0.02,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    textname,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(text)
              // "First Gen jewallry ,GHA grurad and anMBA by education kruti is a custom education kruti is a custom"),
            ],
          ),
        )
      ],
    ).commonSymmetricSidePadding(horizontal: 15);
  }
}
