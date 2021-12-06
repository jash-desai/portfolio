import 'education.export.dart';
import '/meta/sections/education/constants/edu.details.const.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorz.secondaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          'Education'.richText.xl4.white.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                const EducationWidget(
                  name: schoolOneName,
                  board: schoolOneBoard,
                  year: schoolOneDuration,
                  score: schoolOnePercent,
                ),
                10.widthBox,
                const EducationWidget(
                  name: schoolTwoName,
                  board: schoolTwoBoard,
                  year: schoolTwoDuration,
                  score: schoolTwoPercent,
                ),
                10.widthBox,
                const EducationWidget(
                  name: collegeName,
                  board: collegeBranch,
                  year: collegeDuration,
                  score: collegeSemCPI,
                ),
              ],
              initialPage: 2,
              height: 220,
              enlargeCenterPage: false,
              viewportFraction: context.isMobile ? 1.25 : 0.2,
              autoPlay: false,
              autoPlayAnimationDuration: 10.seconds,
              enableInfiniteScroll: false,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 350),
    );
  }
}
