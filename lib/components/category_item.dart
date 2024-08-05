import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  String? text;
  Color? color;
  Function()? ontap;
  CategoryItem({super.key, this.text, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 25, top: 16),
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
