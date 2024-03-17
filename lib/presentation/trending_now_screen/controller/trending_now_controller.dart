import '../../../core/app_export.dart';import '../models/trending_now_model.dart';/// A controller class for the TrendingNowScreen.
///
/// This class manages the state of the TrendingNowScreen, including the
/// current trendingNowModelObj
class TrendingNowController extends GetxController {Rx<TrendingNowModel> trendingNowModelObj = TrendingNowModel().obs;

 }
