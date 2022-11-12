import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olocker_demo/model/imagedata.dart';
import 'package:olocker_demo/model/imagepath.dart';
import 'package:olocker_demo/utils/dimantion.dart';
import 'package:olocker_demo/utils/extension_method.dart';

import '../../utils/colorsthem.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
   List<ImageData> locationimage = [];

  int _currentIndex = 0;

  @override
  void initState() {
    locationimage = Data.getimages();
    // print("****$locationimage");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider.builder(
                      itemCount: locationimage.length,
                      itemBuilder: ((context, index, realIndex) {
                        return Container(
                          height: Dimantion.locationImage,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  locationimage[index].image.toString()),
                            ),
                          ),
                        );
                      }),
                      options: CarouselOptions(
                          onPageChanged: ((index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          // reverse: false,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          // scrollDirection: Axis.horizontal,
                          height: Dimantion.locationImage),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: locationimage.map((url) {
                        int index = locationimage.indexOf(url);
                        return Container(
                          width: 12,
                          height: 12,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: _currentIndex == index
                                ? Border.all(width: 1, color: Colors.white)
                                : Border.all(width: 0),
                            color: _currentIndex == index
                                ? AppColors.indicaterColor1
                                : AppColors.indicaterColor2,
                          ),
                        );
                      }).toList(),
                    ).commonOnlyPadding(right: 30),
    ],);
  }
}
