import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final VoidCallback drawer;

  const HomePage({super.key, required this.drawer});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.alignLeft),
          onPressed: widget.drawer
        ),
        title: const Text('Explore Here', style: TextStyle(fontFamily: 'Exo2'),),
      ),
    );
  }
}