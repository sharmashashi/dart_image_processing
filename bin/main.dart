import 'core/spatialFiltering.dart';
import 'core/u8bitmap.dart';

void main() {
  U8Bitmap object = U8Bitmap('girl.bmp');
  var imageArray = object.imread();
  SpatialFiltering spobj = SpatialFiltering();
  var filteredImage = spobj.simpleFilter(image: imageArray,kernelSize: 5);
  object.imwrite('outputs/output', filteredImage);
}
