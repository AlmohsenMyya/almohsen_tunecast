import 'package:almohsen_s_application13/presentation/search_type_keyword_screen/controller/search_type_keyword_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTypeKeywordScreen.
///
/// This class ensures that the SearchTypeKeywordController is created when the
/// SearchTypeKeywordScreen is first loaded.
class SearchTypeKeywordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTypeKeywordController());
  }
}
