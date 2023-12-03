import 'package:flutter/material.dart';
import 'package:tours/widget/text_widget.dart';

PreferredSizeWidget customeAppBar({
  String? title,
  Widget? leading
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: leading,
    title: title != null ? TextWidget(text: title) : null,
  );
}