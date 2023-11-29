import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;

  const TextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.color
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Exo2',
      fontSize: fontSize,
      color: color
    ),
  );
}