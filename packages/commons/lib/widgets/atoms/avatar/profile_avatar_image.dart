import 'dart:math';

import 'package:flutter/material.dart';

class ProfileAvatarImage extends StatelessWidget {
  final String imagePath;
  final double? radius;
  final String? userName;
  const ProfileAvatarImage({
    Key? key,
    this.imagePath = '',
    this.radius,
    this.userName = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    Color _color = Color.fromRGBO(
        random.nextInt(196) + 60,
        random.nextInt(196) + 60,
        random.nextInt(196) + 60,
        1); //toma un color al azar dentro del rango de 60 a 255

    return CircleAvatar(
      radius: radius ?? 44,
      backgroundImage: imagePath.isNotEmpty ? NetworkImage(imagePath) : null,
      backgroundColor: _color,
      child: imagePath.isEmpty
          ? Text(
              _getInitials(userName!),
              style: const TextStyle(color: Colors.black),
            )
          : null,
    );
  }

  String _getInitials(String name) {
    //toma una cadena de texto para regresar las primera letra de cada palabra
    List<String> letters = name.split(" ");
    String initialLetters = "";

    for (int i = 0; i < letters.length; i++) {
      if (letters[i].isNotEmpty) {
        initialLetters += letters[i][0].toUpperCase();
      }
    }

    return initialLetters;
  }
}
