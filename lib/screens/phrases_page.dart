import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrases_item.dart';
import 'package:language_learning_app/models/Phrases.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Phrases> PH = [
    Phrases(
      phrasejb: 'Kimasu ka?',
      phraseen: 'are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Phrases(
      phrasejb: 'Tōroku suru no o wasurenaide kudasai',
      phraseen: 'dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Phrases(
      phrasejb: 'Kibun wa dō desu ka?',
      phraseen: 'how are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrases(
      phrasejb: 'Anime ga daisuki desu',
      phraseen: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrases(
      phrasejb: 'Puroguramingu ga daisuki desu',
      phraseen: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Phrases(
      phrasejb: 'Puroguramingu wa kantan desu',
      phraseen: 'programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrases(
      phrasejb: 'Onamae wa nan desu ka?',
      phraseen: 'what is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrases(
      phrasejb: 'Doko ni iku no desu ka?',
      phraseen: 'where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Phrases(
      phrasejb: 'Hai, ikimasu',
      phraseen: 'yes, Iam coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: PH.length,
          itemBuilder: (context, i) {
            return PhrasesItem(item: PH[i]);
          }),
    );
  }
}
