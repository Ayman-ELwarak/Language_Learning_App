import 'package:flutter/material.dart';
import 'package:language_learning_app/components/family_member_item.dart';
import 'package:language_learning_app/models/family_member.dart';

// ignore: must_be_immutable
class FamilyMemberPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<FamilyMember> FM = [
    FamilyMember(
        memberjb: 'chichi',
        memberen: 'Father',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sounds/family_members/father.wav'),
    FamilyMember(
        memberjb: 'haha',
        memberen: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'sounds/family_members/mother.wav'),
    FamilyMember(
        memberjb: 'ojiisan',
        memberen: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand father.wav'),
    FamilyMember(
        memberjb: 'sobo',
        memberen: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand mother.wav'),
    FamilyMember(
        memberjb: 'musume',
        memberen: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
    FamilyMember(
        memberjb: 'oniisan',
        memberen: 'Older brother',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sounds/family_members/older bother.wav'),
    FamilyMember(
        memberjb: 'ane',
        memberen: 'Older sister',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sounds/family_members/older sister.wav'),
    FamilyMember(
        memberjb: 'otouto',
        memberen: 'Younger brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'sounds/family_members/younger brohter.wav'),
    FamilyMember(
        memberjb: 'imouto',
        memberen: 'Younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'sounds/family_members/younger sister.wav'),
    FamilyMember(
        memberjb: 'musuko',
        memberen: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
  ];
  FamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: FM.length,
        itemBuilder: (context, i) {
          return FamilyMemberItem(item: FM[i]);
        },
      ),
    );
  }
}
