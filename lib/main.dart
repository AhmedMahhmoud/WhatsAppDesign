import 'package:flutter/material.dart';

import 'WhatsApp/Screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF128C7E))),
      home: const Homescreen(),
    );
  }
}
