import 'resume.header.widget.dart';
import '/meta/sections/header/header.export.dart';
import '/meta/sections/header/widgets/introText.header.widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "- Introduction".text.rose400.widest.medium.make(),
          10.heightBox,
          const IntroTextWidget(),
          20.heightBox,
          const ResumeWidget(),
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
