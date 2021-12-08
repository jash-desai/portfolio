import '/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      LineIcons.laptopCode,
      size: 50,
      color: Colorz.accentColor,
    );
  }
}
