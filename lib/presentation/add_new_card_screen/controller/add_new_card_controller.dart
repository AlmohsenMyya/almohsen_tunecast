import '../../../core/app_export.dart';import '../models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController cardNameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

DateTime selectedInputFieldsDate = DateTime.now();

@override void onClose() { super.onClose(); cardNameController.dispose(); cardNumberController.dispose(); cvvController.dispose(); } 
 }
