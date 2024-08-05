import 'package:flutter/material.dart';
import 'package:language_learning_app/components/colors_item.dart';
import 'package:language_learning_app/models/colores.dart';

// ignore: must_be_immutable
class ColorsBage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Colores> CR = [
    Colores(
      colorjb: 'shiro',
      coloren: 'White',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    Colores(
      colorjb: 'kuro',
      coloren: 'Black',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    Colores(
      colorjb: 'aka',
      coloren: 'Red',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    Colores(
      colorjb: 'ki',
      coloren: 'Yellow',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
    Colores(
      colorjb: 'kusunda kiiro',
      coloren: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    Colores(
      colorjb: 'midori',
      coloren: 'Green',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    Colores(
      colorjb: 'haiiro',
      coloren: 'Gray',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    Colores(
      colorjb: 'chairo',
      coloren: 'Brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
  ];
  ColorsBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: CR.length,
          itemBuilder: (context, i) {
            return ColorsItem(item: CR[i]);
          }),
    );
  }
}
