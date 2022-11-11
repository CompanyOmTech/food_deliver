import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olocker_demo/utils/colorsthem.dart';
import 'package:olocker_demo/utils/dimantion.dart';
import 'package:sizer/sizer.dart';

import '../utils/appimages.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    print("current size   " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
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
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Image.asset(
                                AppImages.about_bg,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            'Kurti dimond is one of the new in busy showsome in busy subribe of Kurti dimond is one of the new in busy showsome in busy subribe of '),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
