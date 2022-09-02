import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Busca un Text Widget', (widgetTester) async {
    // Contruimos una App con un Text Widget que muestra la letra 'H'
    await widgetTester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Text('H'),
      ),
    ));

    // Buscamos un widget que muestra la letra 'H'
    expect(find.text('H'), findsOneWidget);
  });

  testWidgets('Buscar un widget usando una Key', (widgetTester) async {
    // Definimos la key de prueba.
    const testKey = Key('K');

    // Construimos un MaterialAPP con la testKey.
    await widgetTester.pumpWidget(MaterialApp(key: testKey, home: Container()));

    // Buscamos el widget MaterialApp usando el testKey.
    expect(find.byKey(testKey), findsOneWidget);
  });

  testWidgets('Busca una instancia especifica', (widgetTester) async {
    const childWidget = Padding(padding: EdgeInsets.zero);

    // Porporcionamos el childWidget a el Container.
    await widgetTester.pumpWidget(Container(child: childWidget));

    // Buscamos al childWidget en el arbol y verificamos si existe.
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
