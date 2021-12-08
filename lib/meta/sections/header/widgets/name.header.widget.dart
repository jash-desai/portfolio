import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return "Jash Desai"
        .richText
        .withTextSpanChildren([".".textSpan.rose400.make()])
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 18)
        .make();
  }
}
