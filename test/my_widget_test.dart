import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_testing_workshop_2/my_widget.dart';

void main() {
  testWidgets('Mi widget tiene un titulo y un mensaje', (widgetTester) async {
    // Creamos el widget dandole al widget tester que contruir.
    await widgetTester
        .pumpWidget(const MyWidget(title: 'Title', message: 'Message'));

    // Creamos los finders
    final titleFinder = find.text('Title');
    final messageFinder = find.text('Message');

    // Usamos el 'findsOneWidget' matcher para verificar
    // que el Text widget aparece exactamente una vez en el arbol del widget.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
