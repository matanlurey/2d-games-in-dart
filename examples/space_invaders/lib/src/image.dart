import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

/// Loads the image specified by [assetPath].
Future<ui.Image> loadImage(String assetPath) async {
  final bytes = Uint8List.view((await rootBundle.load(assetPath)).buffer);
  final codec = await ui.instantiateImageCodec(bytes);
  return (await codec.getNextFrame()).image;
}
