import 'package:flutter/material.dart';
import 'package:tours/widget/appbar_widget.dart';

class TourPlanPage extends StatefulWidget {
  const TourPlanPage({super.key});

  @override
  State<TourPlanPage> createState() => _TourPlanPageState();
}

class _TourPlanPageState extends State<TourPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: customeAppBar(
        leading: const BackButton(),
        title: 'Tour Details'
      ),
    );
  }
}