// ignore_for_file: import_of_legacy_library_into_null_safe

import '/meta/sections/header/header.export.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      AntDesign.codesquare,
      size: 50,
      color: Colorz.accentColor,
    );
  }
}
