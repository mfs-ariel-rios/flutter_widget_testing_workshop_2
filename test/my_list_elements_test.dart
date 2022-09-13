import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_widget_testing_workshop_2/my_list_elements.dart';

void main() {
  testWidgets('Counter increments smoke test', ((widgetTester) async {
    // Build our app and trigger a frame.
    await widgetTester.pumpWidget(MyListElements(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('item_50_text'));

    // Scroll until the item to be found appears.
    await widgetTester.scrollUntilVisible(itemFinder, 500.0,
        scrollable: listFinder);

    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  }));
}
