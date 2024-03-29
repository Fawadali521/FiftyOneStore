// ignore_for_file: file_names

import '../modules/index.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomBackButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.topLeft,
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_back_outlined,
        color: Palette.blackColor,
      ),
    );
  }
}
