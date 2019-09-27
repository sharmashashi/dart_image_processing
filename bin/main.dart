import 'u8bitmap.dart';

void main() {
  U8Bitmap object = U8Bitmap('boats.bmp');
  var imageArray = object.imread();
  List<int> imageRow = List<int>(object.imread()[0].length);
  for (int i = 0; i < imageRow.length; i++) {
    i < 200 ? imageRow[i] = 255 : imageRow[i] = 0;
  }
  for (int i = 0; i < 100; i++) {
    imageArray[i] = imageRow;
  }

  object.imwrite('blackRowed', imageArray);
}
