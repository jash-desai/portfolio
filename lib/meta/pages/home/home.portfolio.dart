import '/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '/meta/sections/footer/footer.section.dart';
import '/meta/sections/header/header.section.dart';
import '/meta/sections/projects/projects.section.dart';
import '/meta/sections/education/education.section.dart';
import '/meta/sections/header/widgets/intro.header.widget.dart';

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
