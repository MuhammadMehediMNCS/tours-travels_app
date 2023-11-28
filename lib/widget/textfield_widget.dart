import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;

  const TextFieldWidget({
    super.key,
    required this.label,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        widget.label,
        style: const TextStyle(
          fontFamily: 'Exo2',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xff1E2758)
        ),
      ),
      const SizedBox(height: 8),
      TextFormField(
        cursorColor: const Color(0xff1E2758),
        style: const TextStyle(fontFamily: 'Exo2', color: Color(0xff1E2758)),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
          )
        ),
      )
    ],
  );
}