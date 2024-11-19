import 'package:commons/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: 'Home',
      child: Column(
        children: [
          Text('Home Screen'),
        ],
      ),
    );
  }
}