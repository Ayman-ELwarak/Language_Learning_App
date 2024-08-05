import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/Number_page.dart';
import 'package:language_learning_app/screens/colors_bage.dart';
import 'package:language_learning_app/screens/family_member_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 248, 255, 229),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "TOKU",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryItem(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumberPage();
              }));
            },
            text: "Numbers",
            color: Colors.orange,
          ),
          CategoryItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FamilyMemberPage();
                }),
              );
            },
            text: "FamilyMembers",
            color: Colors.green,
          ),
          CategoryItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ColorsBage();
                }),
              );
            },
            text: "Colors",
            color: Colors.purple,
          ),
          CategoryItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }),
              );
            },
            text: "Phrases",
            color: const Color.fromARGB(255, 106, 184, 223),
          ),
        ],
      ),
    );
  }
}
