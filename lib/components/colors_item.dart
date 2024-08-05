import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/colores.dart';

// ignore: must_be_immutable
class ColorsItem extends StatelessWidget {
  Colores item;
  ColorsItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.purple,
      child: Row(
        children: [
          Container(
            height: 100,
            color: const Color.fromARGB(232, 248, 255, 229),
            child: Image.asset(item.image!),
          ),
          SizedBox(
            width: 170,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.colorjb!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    item.coloren!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound!));
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
