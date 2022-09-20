import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:suchone_loading_animation_widget/src/discrete_circle/discrete_circle.dart';
import 'package:suchone_loading_animation_widget/src/flickr/flickr.dart';
import 'package:suchone_loading_animation_widget/src/newton_cradle/newton_cradle.dart';
import 'base_structure.dart';

const Color _testColor = Color(0xFFFFFFFF);

const double _testSize = 200;

void main() {

testWidgets('DiscreteCircle Ticker has been disposed.',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      baseStructure(const DiscreteCircle(
        color: _testColor,
        secondCircleColor: _testColor,
        thirdCircleColor: _testColor,
        size: _testSize,
      )),
    );

    tester.verifyTickersWereDisposed();
  });

  testWidgets('Flickr Ticker has been disposed.', (WidgetTester tester) async {
    await tester.pumpWidget(
      baseStructure(const Flickr(
        size: _testSize,
        leftDotColor: _testColor,
        rightDotColor: _testColor,
      )),
    );

    tester.verifyTickersWereDisposed();
  });

  testWidgets('NewtonCradle Ticker has been disposed.',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      baseStructure(const NewtonCradle(
        size: _testSize,
        color: _testColor,
      )),
    );

    tester.verifyTickersWereDisposed();
  });
}
