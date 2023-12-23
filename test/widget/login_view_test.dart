import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockRoute extends Mock implements Route {}

void main() {
  testWidgets('LoginView Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginView()));

    expect(find.text('Welcome'), findsOneWidget);

    expect(find.text('to LypsisBook'), findsOneWidget);

    expect(find.text('Make your life easier'), findsOneWidget);

    expect(find.widgetWithText(RTextField, 'Email'), findsOneWidget);

    expect(find.widgetWithText(RPasswordField, 'Password'), findsOneWidget);
  });

  testWidgets('Test filling inputs and clicking button', (WidgetTester tester) async {
    var mockObserver = MockNavigatorObserver();

    await tester.pumpWidget(
      MaterialApp(
        home: const LoginView(),
        navigatorObservers: [mockObserver],
      ),
    );

    var emailField = find.byType(TextField).at(0);
    var passwordField = find.byType(TextField).at(1);

    await tester.enterText(emailField, 'test@email.com');
    await tester.enterText(passwordField, 'password');

    /* 
    await tester.tap(find.byKey(const Key('button-login')));

    await tester.pumpAndSettle();

    var mockRoute = MockRoute();
    when(mockObserver.didPush(mockRoute, any)).thenReturn(true);

    verify(mockObserver.didPush(mockRoute, mockRoute)); */
  });
}
