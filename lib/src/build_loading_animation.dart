import 'package:flutter/material.dart';

import 'discrete_circle/discrete_circle.dart';
import 'flickr/flickr.dart';
import 'newton_cradle/newton_cradle.dart';

class LoadingAnimationWidget {
  LoadingAnimationWidget._();
  /// A dot becomes a full ring and also have discrete following rings.
  /// Required color is applied to the circular ring.
  static Widget discreteCircle({
    required Color color,
    required double size,
    Color secondRingColor = Colors.teal,
    Color thirdRingColor = Colors.orange,
    Key? key,
  }) {
    return DiscreteCircle(
      color: color,
      size: size,
      secondCircleColor: secondRingColor,
      thirdCircleColor: thirdRingColor,
      key: key,
    );
  }

  /// Similar to flickr loading animation. Two disks swap positon and come back to initial.
  /// Required leftDotColor is applied to the left disk.
  /// Required rightDotColor is applied to the right disk.
  static Widget flickr({
    required Color leftDotColor,
    required Color rightDotColor,
    required double size,
    Key? key,
  }) {
    return Flickr(
      leftDotColor: leftDotColor,
      rightDotColor: rightDotColor,
      size: size,
      key: key,
    );
  }

  /// Four balls swing and give newton cradle animation. Required color is
  /// applied to all four balls.
  static Widget newtonCradle({
    required Color color,
    required double size,
    Key? key,
  }) {
    return NewtonCradle(
      color: color,
      size: size,
      key: key,
    );
  }

}
