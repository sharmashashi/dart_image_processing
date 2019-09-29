import 'core/intensity_transformations.dart';
import 'core/u8bitmap.dart';

void main() {
  U8Bitmap object = U8Bitmap('girl.bmp');
  var imageArray = object.imread();
  IntensityTransformation transform =
      IntensityTransformation(srcImage: imageArray);

  var negativeImage = transform.negative(bpp: object.bitsPerPixel);
  // SpatialFiltering spobj = SpatialFiltering();
  // var filteredImage = spobj.simpleFilter(image: imageArray, kernelSize: 9);
  object.imwrite('outputs/output', negativeImage);
}
