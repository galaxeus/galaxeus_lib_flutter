library galaxeus_lib_flutter;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

export "extension/extension.dart";
export "widget/widget.dart";

class MyScrollBehavior extends MaterialScrollBehavior {

  @override
  Set<PointerDeviceKind> get dragDevices {
    return {
      PointerDeviceKind.touch,
      PointerDeviceKind.mouse,
      PointerDeviceKind.trackpad,
      PointerDeviceKind.stylus,
      PointerDeviceKind.invertedStylus,
    };
  }
}
