import '../../../core/app_export.dart';import 'paymentmethod_item_model.dart';/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel {Rx<List<PaymentmethodItemModel>> paymentmethodItemList = Rx([PaymentmethodItemModel(payPal:ImageConstant.imgFrameLightBlue600.obs,payPal1: "PayPal".obs),PaymentmethodItemModel(payPal:ImageConstant.imgFrameRed500.obs,payPal1: "Google Pay".obs)]);

 }
