import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sizing {
  // side spacing
  static double sideSpacing = 25;

  // screen size
  static resolution(context) {
    return MediaQuery.of(context);
  }

  // screen height
  static double screenHeight() {
    return Get.height;
  }

  // screen width
  static double screenWidth() {
    return Get.width;
  }

  // custom height
  static double customHeight(pixels) {
    final double percentage = pixels / screenHeight();
    return screenHeight() * percentage;
  }

  // custom width
  static double customWidth(pixels) {
    final double percentage = pixels / screenWidth();
    return screenWidth() * percentage;
  }
}
