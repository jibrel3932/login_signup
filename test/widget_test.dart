import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:login_signup/main.dart';
import 'package:login_signup/screens/signup_page.dart';
import 'package:login_signup/widgets/custom_button.dart';
import 'package:login_signup/widgets/custom_text_field.dart';

void main() {
  testWidgets('Login page shows its fields and button', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome back'), findsOneWidget);
    expect(find.byType(CustomTextField), findsNWidgets(2));
    expect(find.byType(CustomButton), findsOneWidget);
    expect(find.text('Forgot password?'), findsOneWidget);
  });

  testWidgets('Sign up opens, Log in and back arrow go back', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Login -> Sign up
    await tester.ensureVisible(find.text('Sign up'));
    await tester.tap(find.text('Sign up'));
    await tester.pumpAndSettle();
    expect(find.byType(SignUpPage), findsOneWidget);
    expect(find.byType(CustomTextField), findsNWidgets(4));

    // "Log in" link -> back to Login
    await tester.ensureVisible(find.text('Log in'));
    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);

    // Sign up again, then the back arrow -> back to Login
    await tester.ensureVisible(find.text('Sign up'));
    await tester.tap(find.text('Sign up'));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);
  });
}
