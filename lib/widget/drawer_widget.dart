import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatelessWidget {
  final IconData leading;
  final String title;
  final VoidCallback onClicked;

  const DrawerWidget({
    super.key,
    required this.leading,
    required this.title,
    required this.onClicked
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24,),
      leading: FaIcon(leading),
      title: Text(title),
      onTap: onClicked,
    ),
  );
}