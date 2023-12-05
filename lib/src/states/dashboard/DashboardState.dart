// ignore_for_file: file_names

import 'package:fiftyonestores/src/models/ProductModel.dart';

import '../../modules/index.dart';

class DashboardState extends LoadingState {
  final RxBool _isExpand = false.obs;
  final RxInt _selectedIndex = 0.obs;
  bool get isExpand => _isExpand.value;
  int get selectedIndex => _selectedIndex.value;
  set isExpand(value) => _isExpand.value = value;
  set selectedIndex(value) => _selectedIndex.value = value;
  final RxString selectedPrimeCategory = ''.obs;

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
}
