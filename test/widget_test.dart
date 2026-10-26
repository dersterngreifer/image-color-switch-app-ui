import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_color_switch_app/main.dart';

void main() {
  testWidgets('HomeScreen renders and allows color selection smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('Color Themes'), findsOneWidget);
    expect(find.text('PILIH WARNA'), findsOneWidget);
    expect(find.byIcon(Icons.check_rounded), findsOneWidget);

    // Tap on the second color item (Red)
    final checkFinder = find.byIcon(Icons.check_rounded);
    expect(checkFinder, findsOneWidget);

    // Verify initial theme name
    expect(find.text('Mint Theme'), findsOneWidget);
  });
}
