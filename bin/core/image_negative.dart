import 'dart:math';

import 'package:meta/meta.dart';

class ImageNegative {
  ///- takes source image and bits per pixel
  ///- returns image negative
  List<List<int>> negative(
      {@required List<List<int>> srcImage, @required int bpp}) {
    for (int i = 0; i < srcImage.length; i++) {
      for (int j = 0; j < srcImage[0].length; j++) {
        srcImage[i][j] = (pow(2, bpp) - 1 - srcImage[i][j]).abs();
      }
    }
    return srcImage;
  }
}
