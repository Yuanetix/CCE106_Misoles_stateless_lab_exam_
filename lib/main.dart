import 'package:flutter/material.dart';
import 'package:stateless_lab_exam/shopping_cart_page.dart';

void main() {
  runApp(const StatelessLabExamApp());
}

/// The root application widget configured with an iOS / SF Pro aesthetic.
class StatelessLabExamApp extends StatelessWidget {
  const StatelessLabExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        fontFamily: '.SF Pro Text',
        fontFamilyFallback: const [
          '.SF Pro Display',
          'CupertinoSystemText',
          'SF Pro Text',
          'SF Pro Display',
          '-apple-system',
          'BlinkMacSystemFont',
          'Roboto',
          'sans-serif',
        ],
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1862F6),
          primary: const Color(0xFF1862F6),
          surface: Colors.white,
          onSurface: const Color(0xFF121E36),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF121E36),
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 0,
          margin: EdgeInsets.zero,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(letterSpacing: -0.5, color: Color(0xFF121E36)),
          displayMedium: TextStyle(letterSpacing: -0.5, color: Color(0xFF121E36)),
          displaySmall: TextStyle(letterSpacing: -0.4, color: Color(0xFF121E36)),
          headlineLarge: TextStyle(letterSpacing: -0.5, color: Color(0xFF121E36)),
          headlineMedium: TextStyle(letterSpacing: -0.4, color: Color(0xFF121E36)),
          headlineSmall: TextStyle(letterSpacing: -0.4, color: Color(0xFF121E36)),
          titleLarge: TextStyle(letterSpacing: -0.4, color: Color(0xFF121E36)),
          titleMedium: TextStyle(letterSpacing: -0.3, color: Color(0xFF121E36)),
          titleSmall: TextStyle(letterSpacing: -0.3, color: Color(0xFF121E36)),
          bodyLarge: TextStyle(letterSpacing: -0.3, color: Color(0xFF121E36)),
          bodyMedium: TextStyle(letterSpacing: -0.3, color: Color(0xFF121E36)),
          bodySmall: TextStyle(letterSpacing: -0.3, color: Color(0xFF5E6B85)),
          labelLarge: TextStyle(letterSpacing: -0.3, color: Color(0xFF121E36)),
          labelMedium: TextStyle(letterSpacing: -0.3, color: Color(0xFF5E6B85)),
          labelSmall: TextStyle(letterSpacing: -0.3, color: Color(0xFF5E6B85)),
        ),
      ),
      home: const ShoppingCartPage(),
    );
  }
}
