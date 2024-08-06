import 'package:flutter/material.dart';

ScreenSize getSizeByScreenPercent(BuildContext context, int percent) {
  var sizeOf = MediaQuery.sizeOf(context);
  return ScreenSize(sizeOf.height, sizeOf.width);
}

class ScreenSize {
  final double height;
  final double width;

  ScreenSize(this.height, this.width);
}
