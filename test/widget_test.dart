import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_8_1/main.dart';
import 'package:flutter_8_1/pages/loading_page.dart';
import 'package:flutter_8_1/pages/login_page.dart';

void main() {
  testWidgets('Shows the login page after loading', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(LoadingPage), findsOneWidget);

    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();

    expect(find.byType(LoginPage), findsOneWidget);
  });
}
