import '/meta/sections/header/header.export.dart';

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
