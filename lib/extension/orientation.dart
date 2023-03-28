import 'package:flutter/material.dart';

extension OrientTationExtension on Orientation {
  bool get isLandscape {
    return (this == Orientation.landscape);
  }

  bool get isPortrait {
    return (this == Orientation.portrait);
  }
}
