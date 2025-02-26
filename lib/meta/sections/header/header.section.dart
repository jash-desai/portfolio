import 'package:portfolio/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/meta/sections/header/widgets/name.header.widget.dart';
import 'package:portfolio/meta/sections/header/widgets/intro.header.widget.dart';
import 'package:portfolio/meta/sections/header/widgets/social.header.widget.dart';
import 'package:portfolio/meta/sections/header/widgets/appBar.header.widget.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: VStack(
          [
            ZStack(
              [
                // const PictureWidget(),
                Row(
                  children: [
                    VStack(
                      [
                        if (context.isMobile) 50.heightBox else 10.heightBox,
                        const CustomAppBar()
                            .shimmer(primaryColor: Colorz.accentColor),
                        30.heightBox,
                        const NameWidget()
                            .shimmer(primaryColor: Colorz.accentColor),
                        20.heightBox,
                        VxBox().color(Colorz.accentColor).size(80, 10).make(),
                        30.heightBox,
                        const SocialAccounts(),
                      ],
                    ).pSymmetric(h: context.percentWidth * 10, v: 32),
                    Expanded(
                      child: VxResponsive(
                        fallback: const Offstage(),
                        small: const IntroWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        medium: const IntroWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        large: const IntroWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        xlarge: const IntroWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                      ),
                    ),
                  ],
                ).w(context.screenWidth)
              ],
            ),
          ],
        ),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Colorz.secondaryColor)
          .make(),
    );
  }
}
