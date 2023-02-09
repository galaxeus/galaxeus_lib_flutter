import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mediaQueryData {
    return MediaQuery.of(this);
  }

  Orientation get orientation {
    return mediaQueryData.orientation;
  }
}
