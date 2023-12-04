// ignore_for_file: file_names

import 'package:fiftyonestores/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.onEditingComplete,
    this.validator,
    this.keyboardType,
    this.obscureText,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    this.suffixIcon,
    this.maxline = 1,
    this.onChange,
    this.maxLength,
    this.intialValue,
    this.focusnode,
    this.onFieldSubmitted,
    this.onTap,
    this.expands,
    this.hintMaxLines,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final bool? obscureText;
  final void Function()? onEditingComplete;
  final String? intialValue;
  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Function(String)? onChange;
  final int? maxline;
  final int? maxLength;
  final FocusNode? focusnode;
  final void Function(String)? onFieldSubmitted;
  final VoidCallback? onTap;
  final bool? expands;
  final int? hintMaxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      expands: expands ?? false,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      initialValue: intialValue,
      maxLength: maxLength,
      focusNode: focusnode,
      maxLines: maxline,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyles.titleSmall,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: Palette.blackColor,
      obscureText: obscureText ?? false,
      controller: controller,
      onChanged: onChange,
      validator: validator,
      decoration: InputDecoration(
        helperMaxLines: hintMaxLines ?? 1,
        errorMaxLines: 3,
        contentPadding:
            EdgeInsets.only(left: sW(20), top: sH(20), right: sW(20)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        counterText: '',
        fillColor: Palette.bgTextFeildColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyles.titleSmall.copyWith(
          color: Palette.grayColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderStyles.normal,
          borderSide: BorderSide(
            color: Palette.bgTextFeildColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderStyles.normal,
          borderSide: BorderSide(
            color: Palette.bgTextFeildColor,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderStyles.normal,
          borderSide: BorderSide(
            color: Palette.bgTextFeildColor,
          ),
        ),
      ),
    );
  }
}
