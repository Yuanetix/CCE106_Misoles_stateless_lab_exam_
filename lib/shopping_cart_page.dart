import 'package:flutter/material.dart';

/// The Shopping Cart Page displays an elevated, iOS-inspired static shopping cart
/// with delivery details, item cards, a discount banner, and a payment summary.
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            height: 1.0,
            thickness: 1.0,
            color: Color(0xFFE5ECF6),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF121E36),
            size: 22,
          ),
          onPressed: () => debugPrint('Back clicked'),
          tooltip: 'Back',
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Color(0xFF121E36),
            fontSize: 21,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () => debugPrint('Cart clicked'),
              tooltip: 'Shopping Bag',
              splashRadius: 22,
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xFF121E36),
                    size: 26,
                  ),
                  Positioned(
                    top: -2,
                    right: -3,
                    child: Container(
                      width: 17,
                      height: 17,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1862F6),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Introduction Section ---
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4.5),
                decoration: BoxDecoration(
                  color: const Color(0xFFE5F0FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'CAMPUS STORE',
                  style: TextStyle(
                    color: Color(0xFF1862F6),
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Ready for checkout',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF121E36),
                  letterSpacing: -0.6,
                  height: 1.15,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Review your items before placing your order.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5E6B85),
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 18),

              // --- Delivery Information Card ---
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFFE5ECF6), width: 1.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x08121E36),
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xFF1862F6),
                      size: 24,
                    ),
                    Container(
                      height: 36,
                      width: 1,
                      color: const Color(0xFFE5ECF6),
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deliver to Glenn Oliva',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xFF121E36),
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Matina, Davao City',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5E6B85),
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          debugPrint('Change delivery address clicked'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: Color(0xFF1862F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),

              // --- Order Items Header ---
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Order Items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF121E36),
                      letterSpacing: -0.4,
                    ),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF5E6B85),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // --- Reusable CartItemCard Instances with iOS SF Aesthetic ---
              const CartItemCard(
                productName: 'Wireless Mouse',
                price: 'PHP 450.00',
                quantity: 1,
                icon: Icons.mouse_outlined,
              ),
              const SizedBox(height: 12),
              const CartItemCard(
                productName: 'USB-C Hub',
                price: 'PHP 850.00',
                quantity: 1,
                icon: Icons.usb_rounded,
              ),
              const SizedBox(height: 12),
              const CartItemCard(
                productName: 'Laptop Stand',
                price: 'PHP 700.00',
                quantity: 1,
                icon: Icons.laptop_mac_rounded,
              ),
              const SizedBox(height: 18),

              // --- Discount Banner ---
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE5F0FF),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: const Color(0xFFC7DEFF),
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.local_offer_outlined,
                      color: Color(0xFF1862F6),
                      size: 22,
                    ),
                    Container(
                      height: 32,
                      width: 1,
                      color: const Color(0x331862F6),
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STUDENT10 applied',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xFF121E36),
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '10% discount on items',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5E6B85),
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xFF1862F6),
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),

              // --- Payment Summary Card ---
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFFE5ECF6), width: 1.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x08121E36),
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF121E36),
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 14),
                    _buildSummaryRow(
                      label: 'Subtotal',
                      amount: 'PHP 2,000.00',
                    ),
                    const SizedBox(height: 9),
                    _buildSummaryRow(
                      label: 'Discount (10%)',
                      amount: '- PHP 200.00',
                    ),
                    const SizedBox(height: 9),
                    _buildSummaryRow(
                      label: 'Delivery Fee',
                      amount: 'PHP 50.00',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Divider(
                        color: Color(0xFFE5ECF6),
                        height: 1.0,
                        thickness: 1.0,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF121E36),
                            letterSpacing: -0.3,
                          ),
                        ),
                        Text(
                          'PHP 1,850.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF121E36),
                            letterSpacing: -0.3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),

              // --- Place Order Button ---
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Place order clicked! Total: PHP 1850.00');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1862F6),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Place Order',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildSummaryRow({
    required String label,
    required String amount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF5E6B85),
            letterSpacing: -0.2,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF121E36),
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }
}

/// A reusable, static cart item card widget displaying product details,
/// iOS SF-styled vector icon, pricing, quantity controls, and delete action.
class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  Widget _buildProductIcon() {
    if (productName == 'Wireless Mouse') {
      return const CustomPaint(
        size: Size(34, 34),
        painter: WirelessMousePainter(color: Color(0xFF1862F6)),
      );
    } else if (productName == 'USB-C Hub') {
      return const CustomPaint(
        size: Size(36, 36),
        painter: UsbHubPainter(color: Color(0xFF1862F6)),
      );
    } else if (productName == 'Laptop Stand') {
      return const CustomPaint(
        size: Size(36, 36),
        painter: LaptopStandPainter(color: Color(0xFF1862F6)),
      );
    }
    return Icon(
      icon,
      color: const Color(0xFF1862F6),
      size: 32,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5ECF6), width: 1.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08121E36),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 68x68 light-blue rounded box containing the dark-blue iOS Icon
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              color: const Color(0xFFE5F0FF),
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: _buildProductIcon(),
          ),
          const SizedBox(width: 12),

          // Middle: Bold product name, bold blue price, and quantity control row
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF121E36),
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color(0xFF1862F6),
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    // Minus button (blue outlined rounded square)
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      child: InkWell(
                        onTap: () =>
                            debugPrint('Decrease quantity: $productName'),
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          width: 30,
                          height: 28,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF1862F6),
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 16,
                            color: Color(0xFF1862F6),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),

                    // Quantity display container (subtle light border box matching design)
                    Container(
                      width: 42,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFFE5ECF6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Color(0xFF121E36),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),

                    // Plus button (blue outlined rounded square)
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      child: InkWell(
                        onTap: () =>
                            debugPrint('Increase quantity: $productName'),
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          width: 30,
                          height: 28,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF1862F6),
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 16,
                            color: Color(0xFF1862F6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Right (top-aligned): Grey trash/delete IconButton
          IconButton(
            onPressed: () => debugPrint('Remove item: $productName'),
            icon: const Icon(
              Icons.delete_outline_rounded,
              color: Color(0xFF5E6B85),
              size: 20,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            splashRadius: 18,
            tooltip: 'Remove',
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// iOS SF Symbols Vector Icon Painters
// =============================================================================

/// Custom vector painter for the iOS SF-style Wireless Mouse icon.
class WirelessMousePainter extends CustomPainter {
  final Color color;
  const WirelessMousePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final cx = size.width / 2;
    final cy = size.height / 2;

    // Outer capsule body
    const w = 18.0;
    const h = 28.0;
    final rect = Rect.fromCenter(center: Offset(cx, cy), width: w, height: h);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(9.0));
    canvas.drawRRect(rrect, strokePaint);

    // Vertical top split line
    canvas.drawLine(
      Offset(cx, rect.top + 2.5),
      Offset(cx, rect.top + 7.5),
      strokePaint,
    );

    // Scroll wheel pill
    final wheelRect = Rect.fromCenter(
      center: Offset(cx, rect.top + 10.5),
      width: 2.4,
      height: 4.8,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(wheelRect, const Radius.circular(1.2)),
      fillPaint,
    );
  }

  @override
  bool shouldRepaint(covariant WirelessMousePainter oldDelegate) =>
      oldDelegate.color != color;
}

/// Custom vector painter for the iOS SF-style USB-C Hub icon (dongle with cable and ports).
class UsbHubPainter extends CustomPainter {
  final Color color;
  const UsbHubPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final cx = size.width / 2;
    final cy = size.height / 2;

    // Hub body at the bottom
    final hubRect =
        Rect.fromCenter(center: Offset(cx, cy + 6.0), width: 32.0, height: 13.0);
    final hubRRect =
        RRect.fromRectAndRadius(hubRect, const Radius.circular(3.5));
    canvas.drawRRect(hubRRect, strokePaint);

    // 3 USB ports inside the hub
    final portPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3
      ..strokeCap = StrokeCap.round;

    for (final offsetX in [-7.5, 0.0, 7.5]) {
      final portRect = Rect.fromCenter(
        center: Offset(cx + offsetX, cy + 6.0),
        width: 3.0,
        height: 5.5,
      );
      canvas.drawRRect(
        RRect.fromRectAndRadius(portRect, const Radius.circular(1.0)),
        portPaint,
      );
    }

    // Curved cable extending out from hub
    final cablePath = Path()
      ..moveTo(cx - 5.0, hubRect.top)
      ..cubicTo(
        cx - 5.0,
        cy - 2.5,
        cx + 8.0,
        cy - 1.5,
        cx + 6.0,
        cy - 7.0,
      );
    canvas.drawPath(cablePath, strokePaint);

    // Male USB-C plug at the end of the cable
    final plugBody = Rect.fromCenter(
      center: Offset(cx + 6.0, cy - 9.5),
      width: 8.0,
      height: 4.8,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(plugBody, const Radius.circular(1.2)),
      strokePaint..strokeWidth = 1.6,
    );
  }

  @override
  bool shouldRepaint(covariant UsbHubPainter oldDelegate) =>
      oldDelegate.color != color;
}

/// Custom vector painter for the iOS SF-style Laptop Stand icon.
class LaptopStandPainter extends CustomPainter {
  final Color color;
  const LaptopStandPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final cx = size.width / 2;
    final cy = size.height / 2;

    // Laptop display screen
    final screenRect =
        Rect.fromCenter(center: Offset(cx, cy - 4.5), width: 25.0, height: 15.0);
    final screenRRect =
        RRect.fromRectAndRadius(screenRect, const Radius.circular(2.5));
    canvas.drawRRect(screenRRect, strokePaint);

    // Laptop base / keyboard shelf
    final baseRect =
        Rect.fromCenter(center: Offset(cx, cy + 4.5), width: 30.0, height: 3.0);
    final baseRRect =
        RRect.fromRectAndRadius(baseRect, const Radius.circular(1.0));
    canvas.drawRRect(baseRRect, fillPaint);

    // Stand riser base underneath
    final standPath = Path()
      ..moveTo(cx - 7.0, cy + 6.5)
      ..lineTo(cx - 9.5, cy + 12.0)
      ..lineTo(cx + 9.5, cy + 12.0)
      ..lineTo(cx + 7.0, cy + 6.5);
    canvas.drawPath(standPath, strokePaint..strokeWidth = 1.7);
  }

  @override
  bool shouldRepaint(covariant LaptopStandPainter oldDelegate) =>
      oldDelegate.color != color;
}
