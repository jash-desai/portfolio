import '/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'widgets/project.content.widget.dart';
import 'constants/project.details.const.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List projectName = ProjectDetails.projectName;
    const List projectDetails = ProjectDetails.projectDetails;
    const List projectDuration = ProjectDetails.projectDuration;
    const List projectTechStack = ProjectDetails.projectTechStack;
    const List projectLink = ProjectDetails.projectLink;

    return Material(
      color: Colorz.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          'Projects \n'.richText.xl4.white.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              // options: CarouselOptions(
              height: context.isMobile ? 380 : 220,
              autoPlayAnimationDuration: 7.seconds,
              autoPlay: true,
              enableInfiniteScroll: true,
              viewportFraction: 1,
              // ),
              items: [
                ProjectContent(
                  projectName: projectName[0],
                  projectDesc: projectDetails[0],
                  projectDuration: projectDuration[0],
                  projectTechStack: projectTechStack[0],
                  onTap: () {
                    launch(projectLink[0]);
                  },
                ),
                ProjectContent(
                  projectName: projectName[1],
                  projectDesc: projectDetails[1],
                  projectDuration: projectDuration[1],
                  projectTechStack: projectTechStack[1],
                  onTap: () {
                    launch(projectLink[1]);
                  },
                ),
              ],
            ),
          )
        ],
      ).p64().h(context.isMobile ? 550 : 450),
    );
  }
}
