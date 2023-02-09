import 'dart:io';

extension PlatFormExtensionm on Platform {
  bool get isDesktop {
    if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      return true;
    }
    return false;
  }

  bool get isMobile {
    if (Platform.isAndroid || Platform.isIOS) {
      return true;
    }
    return false;
  }
} 