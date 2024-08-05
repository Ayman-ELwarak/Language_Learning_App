// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:language_learning_app/components/NumbersItem.dart';
import 'package:language_learning_app/models/Numbers.dart';

class NumberPage extends StatelessWidget {
  final List<Number> num = [
    Number(
      numberjb: 'ichi',
      numberen: 'one',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      numberjb: 'Ni',
      numberen: 'two',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      numberjb: 'San',
      numberen: 'three',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      numberjb: 'Shi',
      numberen: 'four',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      numberjb: 'GO',
      numberen: 'five',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      numberjb: 'Roku',
      numberen: 'six',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      numberjb: 'Nana',
      numberen: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      numberjb: 'Hachi',
      numberen: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      numberjb: 'Ku',
      numberen: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      numberjb: 'Juu',
      numberen: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: num.length,
        itemBuilder: (context, i) {
          return Numbersitem(
            item: num[i],
          );
        },
      ),
    );
  }
}
