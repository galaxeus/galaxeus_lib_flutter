import 'package:flutter/material.dart';

extension TabControllerExtension on TabController {
  Future<void> animateFromTo({
    int fromIndex = 0,
    required int toIndex,
    Duration delayDuration = const Duration(milliseconds: 500),
    bool isReverse = false,
  }) async {
    for (var i = fromIndex;
        (!isReverse) ? i < toIndex : i > toIndex;
        (isReverse) ? i-- : i++) {
      await Future.delayed(delayDuration);
      if (isReverse) {
        if (i < 0) {
          continue;
        } else if (i > length) {
          return;
        }
      } else {
        if (i > length) {
          return;
        }
      }
      animateTo(
        i,
      );
    }
    return;
  }

  Future<void> animateFromMinToMax({
    Duration delayDuration = const Duration(milliseconds: 500),
  }) async {
    return animateFromTo(
      toIndex: length,
      delayDuration: delayDuration,
    );
  }

  Future<void> animateFromMaxToMin({
    Duration delayDuration = const Duration(milliseconds: 500),
  }) async {
    return animateFromTo(
      fromIndex: length - 1,
      toIndex: -1,
      isReverse: true,
      delayDuration: delayDuration,
    );
  }
}
