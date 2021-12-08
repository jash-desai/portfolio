import 'package:flutter/material.dart';
import 'package:portfolio/app/shared/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class EducationWidget extends StatelessWidget {
  final String name;
  final String board;
  final String year;
  final String score;

  const EducationWidget({
    Key? key,
    required this.name,
    required this.board,
    required this.year,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.isMobile
          ? context.percentWidth * 65
          : context.percentWidth * 30,
      height: context.isMobile
          ? context.percentHeight * 85
          : context.percentHeight * 100,
      decoration: BoxDecoration(
        color: Colorz.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (context.isLandscape) name.text.bold.white.xl.center.make().p(20),
          if (context.isMobile)
            name.text.bold.white.maxLines(2).xl.center.make().p(20),
          5.heightBox,
          board.text.white.lg.make().pOnly(left: 20, right: 20),
          10.heightBox,
          year.text.white.lg.maxLines(1).make().pOnly(left: 20, right: 20),
          10.heightBox,
          score.text.white.lg.maxLines(1).make().pOnly(left: 20, right: 20),
        ],
      ),
    );
  }
}
