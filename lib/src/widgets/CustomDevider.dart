// ignore_for_file: file_names

import '../modules/index.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      indent: 0,
      endIndent: 0,
      color: Palette.grayColor.withOpacity(0.3),
      thickness: 1,
    );
  }
}
