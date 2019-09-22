import 'dart:io';

void main() {
  List<int> headerBytes = List(64);
  List<int> pixelData = List();
  List<int> newPixelData = List();
  List<int> newImage = List();
  var lena = File('lena_gray.bmp').readAsBytesSync();
  for (int i = 0; i < 64; i++) {
    headerBytes[i] = lena[i];
  }

  for (int i = 64; i < lena.length; i++) {
    pixelData.add(lena[i]);
  }

  for (int i = 0; i < pixelData.length; i++) {
    pixelData[i] < 128 ? newPixelData.add(0) : newPixelData.add(255);
  }
  newImage = headerBytes + newPixelData;

  File('newLena.bmp').writeAsBytesSync(newImage);
}
