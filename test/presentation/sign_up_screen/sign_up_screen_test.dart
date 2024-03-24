import 'package:flutter/material.dart';
import 'package:flutter_task_manager/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('sign up screen ...', (tester) async {
    tester.pumpWidget(SignUpScreen());
    tester.pump();

    expect(find.byKey(ValueKey('sign up')), findsOneWidget);
  });
}
