import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/widget_test/widget_test_app.dart';

void main() {
  testWidgets('Initial count is displayed correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetTestApp());

    expect(find.text('현재 카운트: 0'), findsOneWidget);
  });

  testWidgets('Incrementing the counter', (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetTestApp());

    await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
    await tester.pump();

    expect(find.text('현재 카운트: 1'), findsOneWidget);
  });

  testWidgets('Decrementing the counter', (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetTestApp());

    await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.remove));
    await tester.pump();

    expect(find.text('현재 카운트: -1'), findsOneWidget);
  });
}
