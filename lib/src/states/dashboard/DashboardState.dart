// ignore_for_file: file_names

import 'package:fiftyonestores/src/models/ProductModel.dart';

import '../../modules/index.dart';

class DashboardState extends LoadingState {
  final RxBool _isExpand = true.obs;
  final RxInt _selectedIndex = 0.obs;
  final RxInt _selectedPageIndex = 0.obs;
  bool get isExpand => _isExpand.value;
  int get selectedIndex => _selectedIndex.value;
  int get selectedPageIndex => _selectedPageIndex.value;
  set isExpand(value) => _isExpand.value = value;
  set selectedIndex(value) => _selectedIndex.value = value;
  set selectedPageIndex(value) => _selectedPageIndex.value = value;
  final RxString selectedPrimeCategory = ''.obs;
  final TextEditingController expireDate = TextEditingController();
  final RxBool switchValue = false.obs;

  ///dummy data
  final RxList<String> selectPrimesCategores = [
    'Electronics',
    'Mobile Accessories',
    'Clothing',
    'Home Appliances',
    'Books',
    'Toys',
    'Furniture',
    'Beauty and Personal Care',
    'Sports and Outdoors',
    'Automotive',
    // Add more product categories as needed
  ].obs;
  final RxList<ProductModel> primeProducts = <ProductModel>[
    ProductModel(
      title: "Electronics",
      image: electronic,
      description:
          "Explore the cutting-edge world of electronics, where innovation meets functionality. From sleek smartphones to powerful laptops and smart home devices."
              .tr,
    ),
  ].obs;
  final RxList<ProductModel> subProducts = <ProductModel>[
    ProductModel(
      title: "Headphones audio for listen",
      subTitle: "Electronics",
      image: electronic,
      description:
          "Explore the cutting-edge world of electronics, where innovation meets functionality. From sleek smartphones to powerful laptops and smart home devices."
              .tr,
    ),
  ].obs;

  final RxList<ProductModel> products = <ProductModel>[
    ProductModel(
      title: "Headphones audio for listen",
      primeCategory: "Electronics",
      image: electronic,
      subCategory: "Headphones",
      sku: "343318647_PK-1764656991",
      barcode: "344656991",
      description:
          "Explore the cutting-edge world of electronics, where innovation meets functionality. From sleek smartphones to powerful laptops and smart home devices."
              .tr,
    ),
  ].obs;
}
