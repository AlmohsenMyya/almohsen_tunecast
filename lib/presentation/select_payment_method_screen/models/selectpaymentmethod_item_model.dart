import '../../../core/app_export.dart';/// This class is used in the [selectpaymentmethod_item_widget] screen.
class SelectpaymentmethodItemModel {SelectpaymentmethodItemModel({this.payPal, this.payPal1, this.id, }) { payPal = payPal  ?? Rx(ImageConstant.imgFrameLightBlue600);payPal1 = payPal1  ?? Rx("PayPal");id = id  ?? Rx(""); }

Rx<String>? payPal;

Rx<String>? payPal1;

Rx<String>? id;

 }
