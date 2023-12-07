// ignore_for_file: file_names

import 'package:fiftyonestores/src/models/BusinessTypeModel.dart';

import '../../modules/index.dart';

class SelectBusinessState extends LoadingState {
  final RxBool isCorporate = false.obs;
  final RxBool isIndividual = false.obs;
  final RxString _orgName = ''.obs;
  final RxString _orgAddress = ''.obs;
  // bool get isCorporate => _isCorporate.value;
  // bool get isIndividual => _isIndividual.value;
  String? get orgAddress => _orgAddress.value;
  String? get orgName => _orgName.value;
  // set isCorporate(value) => _isCorporate.value = value;
  // set isIndividual(value) => _isIndividual.value = value;
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
  final RxString selectedCurency = "".obs;
  final RxString selectedTimeZone = ''.obs;
  final TextEditingController fiscalStartYear = TextEditingController();
  // String? get fiscalStartYear => _fiscalStartYear.value;
  // set fiscalStartYear(value) => _fiscalStartYear.value = value;
  final RxList<String> selectCurrences = [
    "Afghan Afghani",
    "Albanian Lek",
    "Algerian Dinar",
    "Angolan Kwanza",
    "Argentine Peso",
    "Armenian Dram",
    "Australian Dollar",
    "Azerbaijani Manat",
    "Bahraini Dinar",
    "Bangladeshi Taka",
    "Barbadian Dollar",
    "Belarusian Ruble",
    "Belize Dollar",
    "Bhutanese Ngultrum",
    "Bolivian Boliviano",
    "Bosnia-Herzegovina Convertible Mark",
    "Botswana Pula",
    "Brazilian Real",
    "British Pound Sterling",
    "Brunei Dollar",
    "Bulgarian Lev",
    "Burundian Franc",
    "Cambodian Riel",
    "Canadian Dollar",
    "Cape Verdean Escudo",
    "Central African CFA Franc",
    "Chilean Peso",
    "Chinese Yuan",
    "Colombian Peso",
    "Comorian Franc",
    "Congolese Franc",
    "Costa Rican Colón",
    "Croatian Kuna",
    "Cuban Peso",
    "Czech Republic Koruna",
    "Danish Krone",
    "Djiboutian Franc",
    "Dominican Peso",
    "East Caribbean Dollar",
    "Egyptian Pound",
    "Eritrean Nakfa",
    "Estonian Kroon",
    "Ethiopian Birr",
    "Euro",
    "Fijian Dollar",
    "Gambian Dalasi",
    "Georgian Lari",
    "Ghanaian Cedi",
    "Guatemalan Quetzal",
    "Guinean Franc",
    "Guyanaese Dollar",
    "Haitian Gourde",
    "Honduran Lempira",
    "Hong Kong Dollar",
    "Hungarian Forint",
    "Icelandic Króna",
    "Indian Rupee",
    "Indonesian Rupiah",
    "Iranian Rial",
    "Iraqi Dinar",
    "Israeli New Shekel",
    "Jamaican Dollar",
    "Japanese Yen",
    "Jordanian Dinar",
    "Kazakhstani Tenge",
    "Kenyan Shilling",
    "Kuwaiti Dinar",
    "Kyrgystani Som",
    "Laotian Kip",
    "Latvian Lats",
    "Lebanese Pound",
    "Lesotho Loti",
    "Liberian Dollar",
    "Libyan Dinar",
    "Lithuanian Litas",
    "Macedonian Denar",
    "Malagasy Ariary",
    "Malawian Kwacha",
    "Malaysian Ringgit",
    "Mauritanian Ouguiya",
    "Mauritian Rupee",
    "Mexican Peso",
    "Moldovan Leu",
    "Mongolian Tugrik",
    "Moroccan Dirham",
    "Mozambican Metical",
    "Myanmar Kyat",
    "Namibian Dollar",
    "Nepalese Rupee",
    "Netherlands Antillean Guilder",
    "New Taiwan Dollar",
    "New Zealand Dollar",
    "Nicaraguan Córdoba",
    "Nigerian Naira",
    "North Korean Won",
    "Norwegian Krone",
    "Omani Rial",
    "Pakistani Rupee",
    "Panamanian Balboa",
    "Papua New Guinean Kina",
    "Paraguayan Guarani",
    "Peruvian Nuevo Sol",
    "Philippine Peso",
    "Polish Zloty",
    "Qatari Rial",
    "Romanian Leu",
    "Russian Ruble",
    "Rwandan Franc",
    "Saint Kitts and Nevis Dollar",
    "Saint Lucian Dollar",
    "Saint Vincent and the Grenadines Dollar",
    "Salvadoran Colón",
    "Samoan Tala",
    "Sao Tome and Principe Dobra",
    "Saudi Riyal",
    "Serbian Dinar",
    "Seychellois Rupee",
    "Sierra Leonean Leone",
    "Singapore Dollar",
    "Solomon Islands Dollar",
    "Somali Shilling",
    "South African Rand",
    "South Korean Won",
    "Sri Lankan Rupee",
    "Sudanese Pound",
    "Surinamese Dollar",
    "Swazi Lilangeni",
    "Swedish Krona",
    "Swiss Franc",
    "Syrian Pound",
    "Tajikistani Somoni",
    "Tanzanian Shilling",
    "Thai Baht",
    "Timorese Escudo",
    "Tongan Pa'anga",
    "Trinidad and Tobago Dollar",
    "Tunisian Dinar",
    "Turkish Lira",
    "Turkmenistani Manat",
    "Tuvaluan Dollar",
    "Ugandan Shilling",
    "Ukrainian Hryvnia",
    "United Arab Emirates Dirham",
    "Uruguayan Peso",
    "Uzbekistan Som",
    "Vanuatu Vatu",
    "Venezuelan Bolívar",
    "Vietnamese Dong",
    "Yemeni Rial",
    "Zambian Kwacha",
    "Zimbabwean Dollar",
  ].obs;
  final RxList<String> selectTimeZones = [
    'Set Current Time Zone',
    'UTC-12:00 (Baker Island Time)',
    'UTC-11:00 (Niue Time)',
    'UTC-10:00 (Hawaii-Aleutian Standard Time)',
    'UTC-09:00 (Alaska Standard Time)',
    'UTC-08:00 (Pacific Standard Time)',
    'UTC-07:00 (Mountain Standard Time)',
    'UTC-06:00 (Central Standard Time)',
    'UTC-05:00 (Eastern Standard Time)',
    'UTC-04:00 (Atlantic Standard Time)',
    'UTC-03:00 (Argentina Time)',
    'UTC-02:00 (South Georgia Time)',
    'UTC-01:00 (Azores Time)',
    'UTC±00:00 (Coordinated Universal Time)',
    'UTC+01:00 (Central European Time)',
    'UTC+02:00 (Eastern European Time)',
    'UTC+03:00 (Arabian Standard Time)',
    'UTC+04:00 (Azerbaijan Time)',
    'UTC+05:00 (Pakistan Standard Time)',
    'UTC+06:00 (Omsk Time)',
    'UTC+07:00 (Indochina Time)',
    'UTC+08:00 (China Standard Time)',
    'UTC+09:00 (Japan Standard Time)',
    'UTC+10:00 (Australian Eastern Standard Time)',
    'UTC+11:00 (Norfolk Island Time)',
    'UTC+12:00 (Fiji Time)',
    'UTC+13:00 (Tonga Time)',
    'UTC+14:00 (Line Islands Time)',
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
  final RxInt selectIndexBusinessType = (-1).obs;
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
