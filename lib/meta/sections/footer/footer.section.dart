import '/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import '/meta/sections/header/widgets/appBar.header.widget.dart';
import '/meta/sections/header/widgets/social.header.widget.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        50.heightBox,
        const CustomAppBar(),
        10.heightBox,
        "Thanks for Scrolling, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all for now!".textSpan.gray500.make()]).make(),
        10.heightBox,
        const SocialAccounts(),
        30.heightBox,
        [
          "Made in Flutter with".text.red500.make(),
          8.widthBox,
          const Icon(
            AntIcons.heart,
            color: Vx.red500,
            size: 14,
          ).shimmer(primaryColor: Colorz.accentColor),
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
