import 'package:portfolio/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/routes/social.routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        launch(resumePDF);
      },
      child: "Check my Resume here!".text.color(Colorz.secondaryColor).make(),
      style: ElevatedButton.styleFrom(
        primary: Colorz.accentColor,
      ),
    );
  }
}
