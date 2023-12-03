import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final bool? isRequired;

  const TextFieldWidget({
    super.key,
    required this.label,
    this.isRequired
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontFamily: 'Exo2',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xff1E2758)
        ),
      ),
      const SizedBox(height: 8),
      TextFormField(
        enabled: true,
        cursorColor: const Color(0xff1E2758),
        style: const TextStyle(fontFamily: 'Exo2', color: Color(0xff1E2758)),
        decoration: InputDecoration(
          fillColor: const Color(0xff1E2758),
          errorStyle: const TextStyle(color: Colors.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
          )
        ),
        validator: isRequired == true ? (value) {
          if(value!.isEmpty) {
            return "The field can't be Empty";
          }
          return null;
        } : null,
      )
    ],
  );
}