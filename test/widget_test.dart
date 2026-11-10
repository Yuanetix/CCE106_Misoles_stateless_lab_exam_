import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stateless_lab_exam/main.dart';

void main() {
  testWidgets('Campus store shopping cart page renders correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const StatelessLabExamApp());

    // Verify AppBar title and badge
    expect(find.text('My Cart'), findsOneWidget);
    expect(find.text('3'), findsOneWidget); // Badge displaying "3"

    // Verify Introduction section
    expect(find.text('CAMPUS STORE'), findsOneWidget);
    expect(find.text('Ready for checkout'), findsOneWidget);
    expect(
      find.text('Review your items before placing your order.'),
      findsOneWidget,
    );

    // Verify Delivery Information card
    expect(find.text('Deliver to Glenn Oliva'), findsOneWidget);
    expect(find.text('Matina, Davao City'), findsOneWidget);
    expect(find.text('Change'), findsOneWidget);

    // Verify Cart items header
    expect(find.text('Order Items'), findsOneWidget);
    expect(find.text('3 items'), findsOneWidget);

    // Verify Cart items
    expect(find.text('Wireless Mouse'), findsOneWidget);
    expect(find.text('PHP 450.00'), findsOneWidget);
    expect(find.text('USB-C Hub'), findsOneWidget);
    expect(find.text('PHP 850.00'), findsOneWidget);
    expect(find.text('Laptop Stand'), findsOneWidget);
    expect(find.text('PHP 700.00'), findsOneWidget);

    // Verify Discount banner
    expect(find.text('STUDENT10 applied'), findsOneWidget);
    expect(find.text('10% discount on items'), findsOneWidget);

    // Verify Payment summary
    expect(find.text('Payment Summary'), findsOneWidget);
    expect(find.text('Subtotal'), findsOneWidget);
    expect(find.text('PHP 2,000.00'), findsOneWidget);
    expect(find.text('Discount (10%)'), findsOneWidget);
    expect(find.text('- PHP 200.00'), findsOneWidget);
    expect(find.text('Delivery Fee'), findsOneWidget);
    expect(find.text('PHP 50.00'), findsOneWidget);
    expect(find.text('Total'), findsOneWidget);
    expect(find.text('PHP 1,850.00'), findsOneWidget);

    // Verify Place Order button
    expect(find.text('Place Order'), findsOneWidget);
  });

  testWidgets('All interactive elements trigger the correct debug prints', (
    WidgetTester tester,
  ) async {
    final log = <String>[];
    final originalDebugPrint = debugPrint;
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message != null) log.add(message);
    };

    try {
      await tester.pumpWidget(const StatelessLabExamApp());

      // Back arrow
      await tester.tap(find.byTooltip('Back'));
      expect(log.last, 'Back clicked');

      // Shopping bag
      await tester.tap(find.byTooltip('Shopping Bag'));
      expect(log.last, 'Cart clicked');

      // Change button
      await tester.tap(find.text('Change'));
      expect(log.last, 'Change delivery address clicked');

      // Increase quantity (first item: Wireless Mouse)
      await tester.tap(find.byIcon(Icons.add).first);
      expect(log.last, 'Increase quantity: Wireless Mouse');

      // Decrease quantity (first item: Wireless Mouse)
      await tester.tap(find.byIcon(Icons.remove).first);
      expect(log.last, 'Decrease quantity: Wireless Mouse');

      // Delete button (first item: Wireless Mouse)
      await tester.tap(find.byIcon(Icons.delete_outline_rounded).first);
      expect(log.last, 'Remove item: Wireless Mouse');

      // Place Order button (ensure visible via scroll)
      await tester.ensureVisible(find.text('Place Order'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Place Order'));
      expect(log.last, 'Place order clicked! Total: PHP 1850.00');
    } finally {
      debugPrint = originalDebugPrint;
    }
  });
}
