// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:ase_project1/main.dart' as app;
import 'package:ase_project1/Pages/loginpage.dart';

void main() {
  group('register module', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('app test', (tester) async {
      app.main();

      await tester.pumpAndSettle(const Duration(seconds: 3));
      //expect(find.byType(TextFormField).skipOffstage, findsOneWidget);

      final signupButton1 = find.byKey(Key('button2'));
      final name = find.byKey(Key('name'));
      final number = find.byKey(Key('number'));
      final emailfield = find.byKey(Key('email'));
      final passwordfield = find.byKey(Key('pswd'));
      final cpasswordfield = find.byKey(Key('confirmpswd'));
      final signupButton2 = find.byKey(Key('SignUpButton'));

      await tester.pumpAndSettle(const Duration(seconds: 10));
      await tester.tap(signupButton1);

      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.enterText(name, 'kevin');
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.enterText(number, '5199954852');
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.enterText(emailfield, 'memaharshi1@gmail.com');
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.enterText(passwordfield, 'Maharshi1@5199');
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.enterText(cpasswordfield, 'Maharshi1@5199');
      await tester.pumpAndSettle(const Duration(seconds: 5));

      await tester.tap(signupButton2);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });
  });
}
