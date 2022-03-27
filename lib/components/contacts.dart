import 'package:flutter/material.dart';

Widget contactsSection = SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
      Padding(
          padding: const EdgeInsets.only(left: 10),
          child: contact('+', 'Add', Colors.white,
              fontSize: 30,
              letterColor: const Color(0xFFB7CFDB),
              borderStyle: BorderStyle.solid)),
      contact('OS', 'Oscar', const Color(0xFFCD6155)),
      contact('NO', 'Noah', const Color(0xFF5499C7)),
      contact('JO', 'John', const Color(0xFF45B39D)),
      contact('NA', 'Nash', const Color(0xFFF4D03F)),
      contact('LE', 'Levi', const Color(0xFFEB984E)),
      contact('IS', 'Isaac', const Color(0xFF5D6D7E)),
    ]));

Widget contact(String letters, String name, Color color,
    {double? fontSize = 18,
    Color? letterColor = Colors.white,
    Color borderColor = const Color(0xFFB7CFDB),
    BorderStyle borderStyle = BorderStyle.none,
    double? height = 50,
    double? width = 50,
    double borderRadius = 15,
    double margin = 10}) {
  return Column(children: [
    Container(
      child: Center(
        child: Text(
          letters,
          style: TextStyle(fontSize: fontSize, color: letterColor),
        ),
      ),
      height: height,
      width: width,
      margin: EdgeInsets.only(left: margin, right: margin, bottom: margin),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(style: borderStyle, color: borderColor)),
    ),
    Text(name,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w100))
  ]);
}
