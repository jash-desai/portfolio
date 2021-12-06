import '/meta/sections/header/header.export.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(AntIcons.twitter_outline, color: Colors.white).mdClick(() {
        launch(twitter);
      }).make(),
      20.widthBox,
      const Icon(AntIcons.linkedin, color: Colors.white).mdClick(() {
        launch(linkedIn);
      }).make(),
      20.widthBox,
      const Icon(AntIcons.github, color: Colors.white).mdClick(() {
        launch(github);
      }).make(),
      20.widthBox,
      const Icon(AntIcons.instagram, color: Colors.white).mdClick(() {
        launch(instagram);
      }).make(),
      20.widthBox,
      const Icon(AntIcons.facebook, color: Colors.white).mdClick(() {
        launch(facebook);
      }).make(),
    ].hStack();
  }
}
