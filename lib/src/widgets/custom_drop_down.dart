import '../app/index.dart';

class CustomDropDown extends StatelessWidget {
  final String selectedVal;
  final List<String> items;
  final void Function(String?)? onChanged;
  final Color? dropdownColor;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final Widget? prefixIcon;
  const CustomDropDown({
    super.key,
    required this.items,
    required this.selectedVal,
    this.onChanged,
    this.dropdownColor,
    this.textStyle,
    this.buttonColor,
    this.prefixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Palette.bgTextFeildColor,
        borderRadius: BorderStyles.normal,
      ),
      child: InputDecorator(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          contentPadding: EdgeInsets.zero,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            borderRadius: BorderStyles.normal,
            dropdownColor: dropdownColor ?? Palette.bgTextFeildColor,
            style: textStyle ?? TextStyles.titleSmall,
            value: selectedVal,
            icon: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: buttonColor ?? Palette.grayColor,
                size: 30,
              ),
            ),
            elevation: 0,
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: textStyle ?? TextStyles.titleSmall,
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
