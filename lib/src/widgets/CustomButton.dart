// ignore_for_file: file_names

import 'package:fiftyonestores/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? backGroundColor;
  final String text;
  final TextStyle? textStyle;
  final double? radius;
  final Border? border;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Widget? iconLeft;
  final Widget? iconRight;
  final double? horizontalMargin;

  const CustomButton({
    Key? key,
    required this.onTap,
    this.backGroundColor,
    required this.text,
    this.textStyle,
    this.radius,
    this.border,
    this.horizontalPadding,
    this.verticalPadding,
    this.horizontalMargin,
    this.iconLeft,
    this.iconRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 12,
            horizontal: horizontalPadding ?? 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: border,
          color: backGroundColor ?? Palette.primaryColor,
          borderRadius: BorderRadius.circular(radius ?? 5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconLeft ?? Container(),
            iconLeft == null
                ? const SizedBox(width: 8)
                : const SizedBox(width: 18),
            Expanded(
              child: Text(
                text,
                style: textStyle ??
                    TextStyles.titleMedium.copyWith(
                      color: Palette.bgWhiteColor,
                    ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            iconRight == null
                ? const SizedBox(width: 8)
                : const SizedBox(width: 10),
            iconRight ?? Container(),
          ],
        ),
      ),
    );
  }
}
