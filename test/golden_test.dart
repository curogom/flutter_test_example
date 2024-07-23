import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/golden_test/golden_test_app.dart';

const Size smallDeviceSize = Size(375, 667); // iPhone SE
const Size mediumDeviceSize = Size(393, 852); // iPhone 15
const Size largeDeviceSize = Size(430, 932); // iPhone 15 Pro max

Future<void> configureDeviceSize(WidgetTester tester, Size deviceSize) async {
  await tester.binding.setSurfaceSize(deviceSize);
}

void main() {

  testWidgets('Golden test small device', (WidgetTester tester) async {
    await configureDeviceSize(tester, smallDeviceSize);

    await tester.pumpWidget(const GoldenTestApp());

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/scaffold_golden_small_device.png'),
    );
  });

  testWidgets('Golden test medium device', (WidgetTester tester) async {
    await configureDeviceSize(tester, mediumDeviceSize);

    await tester.pumpWidget(const GoldenTestApp());

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/scaffold_golden_medium_device.png'),
    );
  });

  testWidgets('Golden test large device', (WidgetTester tester) async {
    await configureDeviceSize(tester, largeDeviceSize);

    await tester.pumpWidget(const GoldenTestApp());

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/scaffold_golden_large_device.png'),
    );
  });
}