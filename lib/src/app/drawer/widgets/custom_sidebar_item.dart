import '../../index.dart';

class CustomSideBarItem extends StatelessWidget {
  final bool isSelected;
  final String icon;

  final String title;
  final VoidCallback onTap;

  final bool isExpand;
  const CustomSideBarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isExpand,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isExpand
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isSelected
                    ? const Color(0xFFEDF9EC)
                    : const Color(0xFFF7F7F7),
              ),
              child: Row(
                children: [
                  Image.asset(
                    icon,
                    height: 20,
                    width: 20,
                    color: isSelected
                        ? const Color(0xFF47C03F)
                        : const Color(0xFFA1A1A1),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Poppins",
                      color: isSelected
                          ? const Color(0xFF47C03F)
                          : const Color(0xFFA1A1A1),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              margin: const EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isSelected
                    ? const Color(0xFFEDF9EC)
                    : const Color(0xFFF7F7F7),
              ),
              child: Image.asset(
                icon,
                height: 40,
                width: 40,
                color: isSelected
                    ? const Color(0xFF47C03F)
                    : const Color(0xFFA1A1A1),
              ),
            ),
    );
  }
}
