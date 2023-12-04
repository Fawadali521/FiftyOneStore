import 'package:fiftyonestores/src/models/business_type.dart';

import '../../modules/index.dart';

class SelectBusinessState extends LoadingState {
  final RxBool _isCorporate = false.obs;
  final RxBool _isIndividual = false.obs;
  final RxString _orgName = ''.obs;
  final RxString _orgAddress = ''.obs;
  bool get isCorporate => _isCorporate.value;
  bool get isIndividual => _isIndividual.value;
  String? get orgAddress => _orgAddress.value;
  String? get orgName => _orgName.value;
  set isCorporate(value) => _isCorporate.value = value;
  set isIndividual(value) => _isIndividual.value = value;
  set orgAddress(value) => _orgAddress.value = value;
  set orgName(value) => _orgName.value = value;

  ///branch details
  final RxString _branchName = ''.obs;
  final RxString _branchAddress = ''.obs;
  final RxString _branchContact = ''.obs;
  final RxString _branchEmail = ''.obs;
  String? get branchName => _branchName.value;
  String? get branchAddress => _branchAddress.value;
  String? get branchContact => _branchContact.value;
  String? get branchEmail => _branchEmail.value;
  set branchName(value) => _branchName.value = value;
  set branchAddress(value) => _branchAddress.value = value;
  set branchContact(value) => _branchContact.value = value;
  set branchEmail(value) => _branchEmail.value = value;

  ///branch manager details
  final RxString _managerName = ''.obs;
  final RxString _managerContact = ''.obs;
  final RxString _managerEmail = ''.obs;
  String? get managerName => _managerName.value;
  String? get managerContact => _managerContact.value;
  String? get managerEmail => _managerEmail.value;
  set managerName(value) => _managerName.value = value;
  set managerContact(value) => _managerContact.value = value;
  set managerEmail(value) => _managerEmail.value = value;

  /// setting configuration
  final RxString _texRate = ''.obs;
  String? get texRate => _texRate.value;
  set texRate(value) => _texRate.value = value;
  final RxString selectedCurency = "Select currency".tr.obs;
  final RxList<String> selectCurrences = [
    "Select currency".tr,
    "Dollar",
    "Euro",
    "Pound",
    "Rupee",
    "Yen",
    "Yuan",
  ].obs;
  final RxString selectedTimeZone = 'Set time zone'.tr.obs;
  final RxList<String> selectTimeZones = [
    'Set time zone'.tr,
    "Dollar",
    "Euro",
    "Pound",
    "Rupee",
    "Yen",
    "Yuan",
  ].obs;
  final RxString selectedYearStart = 'Fiscal year start'.tr.obs;
  final RxList<String> selectYearStarts = [
    'Fiscal year start'.tr,
    "Dollar",
    "Euro",
    "Pound",
    "Rupee",
    "Yen",
    "Yuan",
  ].obs;

  /// contact details
  final RxString _ownerName = ''.obs;
  final RxString _handlerName = ''.obs;
  final RxString _contactContact = ''.obs;
  final RxString _contactEmail = ''.obs;
  String? get ownerName => _ownerName.value;
  String? get handlerName => _handlerName.value;
  String? get contactContact => _contactContact.value;
  String? get contactEmail => _contactEmail.value;
  set ownerName(value) => _ownerName.value = value;
  set handlerName(value) => _handlerName.value = value;
  set contactContact(value) => _contactContact.value = value;
  set contactEmail(value) => _contactEmail.value = value;
  RxList<BusinessTypeModel> businessTypes = [
    BusinessTypeModel(
      businessType: 'Restaurant/Cafe'.tr,
      icon: restaurantIcon,
      isSelected: false,
    ),
    BusinessTypeModel(
      businessType: 'Retailer'.tr,
      icon: retailerIcon,
      isSelected: false,
    ),
    BusinessTypeModel(
      businessType: 'Wine Shop/Bar'.tr,
      icon: barIcon,
      isSelected: false,
    ),
  ].obs;
}
