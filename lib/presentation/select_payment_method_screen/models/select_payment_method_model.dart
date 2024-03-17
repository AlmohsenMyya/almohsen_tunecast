import '../../../core/app_export.dart';import 'selectpaymentmethod_item_model.dart';/// This class defines the variables used in the [select_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectPaymentMethodModel {Rx<List<SelectpaymentmethodItemModel>> selectpaymentmethodItemList = Rx([SelectpaymentmethodItemModel(payPal:ImageConstant.imgFrameLightBlue600.obs,payPal1: "PayPal".obs),SelectpaymentmethodItemModel(payPal:ImageConstant.imgFrameRed500.obs,payPal1: "Google Pay".obs)]);

 }
