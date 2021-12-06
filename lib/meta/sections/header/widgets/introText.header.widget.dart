import '/meta/sections/header/header.export.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return "Hey there! I am Engineering Student and an App Developer.  \nPassionate about learning new tech stacks and exploring new fields!"
        .text
        .white
        .xl
        .maxLines(5)
        .make()
        .w(context.isMobile ? context.screenWidth : context.percentWidth * 40);
  }
}
