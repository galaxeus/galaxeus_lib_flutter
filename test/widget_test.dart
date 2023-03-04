// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:galaxeus_lib_flutter/widget_to_json/widget_to_json.dart';
// import 'package:galaxeus_lib_flutter/widget_to_json/extensions/material_app.dart';
// import 'package:galaxeus_lib_flutter/widget_to_json/extensions/extensions.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    MaterialApp materialApp = const MaterialApp(
      key: Key("sapskao"),
      home: Scaffold(
        body: Center(
          child: Text("Hai"),
        ),
      ),
    );
    TextStyle textStyle = const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontStyle: FontStyle.italic,
    );
    Text text = Text(
      "okas",
      key: const Key("sapskao"),
      softWrap: true,
      style: textStyle,
    );
    // print(materialApp.toStringShallow());
    print(materialApp.toJson());
    print(text.toJson());

    Column column = Column(
      children: [materialApp, text],
    );

    print(column.toJson());
    // print((materialApp.toJson()));
  });
}
