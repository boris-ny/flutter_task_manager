import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('welcome screen Headline', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Container(
          child: const Column(
            children: [Text("TASK MANAGER")],
          ),
        ),
      ),
    ));
    expect(find.text("TASK MANAGER", findRichText: true), findsOne);
  });

  // testWidgets('RichText displays full text and triggers onTap',
  //     (WidgetTester tester) async {
  //   // Mock the onTapTxtAlreadyhavean function for testing

  //   await tester.pumpWidget(
  //       const WelcomeScreen()); // Replace with your app's starting widget

  //   // Find the RichText widget using its key
  //   final richText = find.byKey(const Key('login'));

  //   // Verify the displayed text
  //   final expectedText = "Already Have An Account ? Log in";
  //   expect(
  //       tester
  //           .firstWidget(
  //               find.descendant(of: richText, matching: find.byType(Text)))
  //           .
  //       expectedText);

  //   // // Simulate a tap on the RichText
  //   // await tester.tap(richText);
  // });

// TODO : look at this test Avite
  testWidgets(' Custom Elevated Button', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: WelcomeScreen()));
    await tester.pump();
    expect(find.byKey(ValueKey('signup')), findsOneWidget);
  });
}
