import '../../../core/app_export.dart';import '../models/edit_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController inputFields1Controller = TextEditingController();

TextEditingController inputFields2Controller = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); inputFields1Controller.dispose(); inputFields2Controller.dispose(); dateController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in editProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editProfileModelObj.value.dropdownItemList.refresh(); } 
 }
