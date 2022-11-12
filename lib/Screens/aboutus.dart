import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olocker_demo/Screens/widgets/ourTeam_widgets.dart';
import 'package:olocker_demo/Screens/widgets/slider_page.dart';
import 'package:olocker_demo/Screens/widgets/title_image.dart';
import 'package:olocker_demo/model/imagedata.dart';
import 'package:olocker_demo/model/imagepath.dart';
import 'package:olocker_demo/utils/appimages.dart';
import 'package:olocker_demo/utils/colorsthem.dart';
import 'package:olocker_demo/utils/dimantion.dart';
import 'package:olocker_demo/utils/extension_method.dart';
import 'widgets/custemAppbarPage.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    // print("current size   " + MediaQuery.of(context).size.height.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundcolor,
        appBar: CustemAppbarPage(
            icon: Icons.arrow_back_ios,
            icon1: Icons.email_outlined,
            title: "Mansi"),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.containercol,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: Get.size.height / 7,
                      width: Get.size.width / 3,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    TitleAboutPage(text: "About us"),
                    const SizedBox(height: 10),
                    const Text(
                            'Kurti dimond is one of the new in busy showsome in busy subribe of Kurti dimond is one of the new in busy showsome in busy subribe of ')
                        .commonSymmetricSidePadding(horizontal: 20),
                    const SizedBox(height: 10),
                    TitleAboutPage(text: 'Our Team'),
                    const SizedBox(height: 10),
                    OurTeamDetailsPage(
                      text:
                          'First Gen jewallry ,GHA grurad and anMBA by education kruti is a custom education kruti is a custom',
                      textname: 'Kruti Gupta',
                    ),
                    const SizedBox(height: 10),
                    OurTeamDetailsPage(
                      text:
                          'First Gen jewallry ,GHA grurad and anMBA by education kruti is a custom education kruti is a custom',
                      textname: 'Kruti Gupta',
                    ),
                    const SizedBox(height: 10),
                    TitleAboutPage(text: "Contect Details"),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text("mansihw11@gmail.com"),
                      ],
                    ).commonSymmetricSidePadding(horizontal: 20),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text("mansihw11@gmail.com"),
                      ],
                    ).commonSymmetricSidePadding(horizontal: 20),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text("Dersan lane, mumbie maharasta"),
                      ],
                    ).commonSymmetricSidePadding(horizontal: 20),
                    const SizedBox(height: 10),
                    TitleAboutPage(text: 'Our Team'),
                    const SizedBox(height: 10),
                    const SliderPage(),
                  ],
                ),
              ).commonAllSidePadding(12),
            ],
          ),
        ),
      ),
    );
  }
}
