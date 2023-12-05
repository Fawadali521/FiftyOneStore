// ignore_for_file: file_names

import 'package:fiftyonestores/src/models/ProductModel.dart';

import '../modules/index.dart';

class CustomCategoryItem extends StatelessWidget {
  final ProductModel primeProduct;
  const CustomCategoryItem({
    super.key,
    required this.primeProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 6,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderStyles.normal,
        border: Border.all(
          color: Palette.grayColor.withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderStyles.medium,
              image: DecorationImage(
                image: AssetImage(
                  primeProduct.image ?? electronic,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  primeProduct.title ?? "",
                  style: TextStyles.titleMedium.copyWith(
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                primeProduct.subTitle != null
                    ? Text(
                        primeProduct.subTitle!,
                        style: TextStyles.bodyMedium.copyWith(
                          color: Palette.blackColor.withOpacity(0.5),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    : const SizedBox(),
                Text(
                  primeProduct.description ?? "",
                  style: TextStyles.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Palette.grayColor,
            size: 16,
          ),
        ],
      ),
    );
  }
}
