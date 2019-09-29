import 'dart:math';

import 'package:meta/meta.dart';

///- provides funcationalities for
///   - image negative
///   - log transformation
///   -
class IntensityTransformation {
  ///source image of type List<List<int>>
  final List<List<int>> srcImage;

  ///Constructor for that take source image
  IntensityTransformation({@required this.srcImage});

  ///- takes bits per pixel and
  ///- returns image negative
  List<List<int>> negative({@required int bpp}) {
    List<List<int>> tempImage = srcImage;
    for (int i = 0; i < srcImage.length; i++) {
      for (int j = 0; j < srcImage[0].length; j++) {
        tempImage[i][j] = (pow(2, bpp) - 1 - srcImage[i][j]).abs();
      }
    }
    return tempImage;
  }
}
