import '../../../core/app_export.dart';
import '../models/new_playlist_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPlaylistBottomsheet.
///
/// This class manages the state of the NewPlaylistBottomsheet, including the
/// current newPlaylistModelObj
class NewPlaylistController extends GetxController {
  TextEditingController labelEditTextController = TextEditingController();

  TextEditingController dateEditTextController = TextEditingController();

  Rx<NewPlaylistModel> newPlaylistModelObj = NewPlaylistModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    labelEditTextController.dispose();
    dateEditTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newPlaylistModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newPlaylistModelObj.value.dropdownItemList.refresh();
  }
}
