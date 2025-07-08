// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mesero_2punto0/main.dart' as app;

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const app.MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('count is 0'), findsOneWidget);
    expect(find.text('count is 1'), findsNothing);

    // Tap the counter button and trigger a frame.
    await tester.tap(find.text('count is 0'));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('count is 0'), findsNothing);
    expect(find.text('count is 1'), findsOneWidget);
  });
}
