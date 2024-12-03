import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '© Médicos Honestos, Medicads Mérida',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
