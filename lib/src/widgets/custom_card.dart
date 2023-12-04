import '../modules/index.dart';

class CustomCard extends StatelessWidget {
  final Widget data;
  final String title;
  final double? widthPadding;
  final double? heightPadding;
  const CustomCard({
    super.key,
    required this.data,
    required this.title,
    this.widthPadding,
    this.heightPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Palette.bgWhiteColor,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: widthPadding ?? sW(40),
          vertical: heightPadding ?? sH(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              logo,
              height: sH(65),
            ),
            SizedBox(height: sH(32)),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: TextStyles.headlineLarge.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            data,
          ],
        ),
      ),
    );
  }
}
