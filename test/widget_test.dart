import 'package:flutter_test/flutter_test.dart';
import 'package:one_button_app/main.dart';

void main() {
  testWidgets('button increments the tap count', (tester) async {
    await tester.pumpWidget(const OneButtonApp());

    expect(find.text('Press the button to begin'), findsOneWidget);
    expect(find.text('Click me'), findsOneWidget);

    await tester.tap(find.text('Click me'));
    await tester.pump();

    expect(find.text('Pressed 1 time'), findsOneWidget);

    await tester.tap(find.text('Click me'));
    await tester.pump();

    expect(find.text('Pressed 2 times'), findsOneWidget);
  });
}
