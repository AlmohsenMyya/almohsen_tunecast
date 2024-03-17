import '../../../core/app_export.dart';import '../models/payment_summary_model.dart';/// A controller class for the PaymentSummaryScreen.
///
/// This class manages the state of the PaymentSummaryScreen, including the
/// current paymentSummaryModelObj
class PaymentSummaryController extends GetxController {Rx<PaymentSummaryModel> paymentSummaryModelObj = PaymentSummaryModel().obs;

 }
