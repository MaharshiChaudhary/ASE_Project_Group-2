// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:ase_project1/main.dart' as app;
import 'package:ase_project1/Pages/loginpage.dart';

void main() {
  group('login module', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('app test', (tester) async {
      app.main();

      await tester.pumpAndSettle(const Duration(seconds: 3));
      //expect(find.byType(TextFormField).skipOffstage, findsOneWidget);

      final emailfield = find.byKey(Key('email_check'));
      final passwordfield = find.byKey(Key('password'));
      final loginButton = find.byKey(Key('button'));
      final TestButton = find.byKey(Key('test'));

      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText(emailfield, 'memaharshi@gmail.com');
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText(passwordfield, 'Maharshi@5199');
      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 5));
      //await tester.allElements;
      //await tester.printToConsole(tester.allElements);
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.tap(TestButton);
      await tester.pumpAndSettle(const Duration(seconds: 5));

      //await tester.pumpAndSettle(const Duration(seconds: 5));
    });
  });
}
