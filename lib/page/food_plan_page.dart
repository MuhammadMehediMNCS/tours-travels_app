import 'package:flutter/material.dart';
import 'package:tours/widget/appbar_widget.dart';

class FoodPlanPage extends StatefulWidget {
  const FoodPlanPage({super.key});

  @override
  State<FoodPlanPage> createState() => _FoodPlanPageState();
}

class _FoodPlanPageState extends State<FoodPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: customeAppBar(
        leading: const BackButton(),
        title: 'Food Details'
      ),
    );
  }
}