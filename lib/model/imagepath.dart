import 'package:olocker_demo/model/imagedata.dart';

class Data {
  static List<ImageData> getimages() {
    return [
      ImageData(image: "assets/images/location1.png"),
      ImageData(image: "assets/images/location2.png"),
      ImageData(image: "assets/images/location3.png"),
    ];
  }
}
