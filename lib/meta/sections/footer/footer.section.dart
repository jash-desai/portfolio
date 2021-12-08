import '/meta/sections/header/header.export.dart';

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
