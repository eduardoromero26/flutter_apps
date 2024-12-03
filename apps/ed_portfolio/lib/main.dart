import 'package:ed_portfolio/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'Eduardo Romero Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E2E2E)),
        useMaterial3: true,
        fontFamily: 'Nunito-Sans',
        // aumentar tamaño de font
      ),
      home: const HomeScreen()
    );
  }
}
