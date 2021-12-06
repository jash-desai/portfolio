import 'home.export.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorz.primaryColor,
      child: VStack(
        [
          const Header(),
          if (context.isMobile) const IntroWidget().p16(),
          const ProjectSection(),
          const EducationSection(),
          20.heightBox,
          const FooterSection(),
        ],
      ).scrollVertical(),
    );
  }
}
