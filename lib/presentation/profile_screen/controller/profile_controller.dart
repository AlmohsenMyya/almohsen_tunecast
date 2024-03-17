import '../../../core/app_export.dart';import '../models/profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<ProfileModel> profileModelObj = ProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); nameController.dispose(); dateOfBirthController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.homeContainerScreen, );Get.toNamed(AppRoutes.createNewPinScreen, ); } 
 }
