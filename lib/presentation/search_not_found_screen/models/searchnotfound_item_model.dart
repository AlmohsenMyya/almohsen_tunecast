import '../../../core/app_export.dart';/// This class is used in the [searchnotfound_item_widget] screen.
class SearchnotfoundItemModel {SearchnotfoundItemModel({this.pillTab, this.id, }) { pillTab = pillTab  ?? Rx("Top");id = id  ?? Rx(""); }

Rx<String>? pillTab;

Rx<String>? id;

 }
