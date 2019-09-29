import 'core/image_negative.dart';
import 'core/spatialFiltering.dart';
import 'core/u8bitmap.dart';

void main() {
  U8Bitmap object = U8Bitmap('girl.bmp');
  ImageNegative negative = ImageNegative();
  var imageArray = object.imread();
  var negativeImage = negative.negative(srcImage: imageArray,bpp: object.bitsPerPixel);
  // SpatialFiltering spobj = SpatialFiltering();
  // var filteredImage = spobj.simpleFilter(image: imageArray, kernelSize: 9);
  object.imwrite('outputs/output', negativeImage);
}
