import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/walkthrough_controller.dart';class WalkthroughScreen extends GetWidget<WalkthroughController> {const WalkthroughScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, image: DecorationImage(image: AssetImage(ImageConstant.imgWalkthrough), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [Spacer(), _buildAutoLayoutVertical()]))))); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 46.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL60), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 376.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_listen_to_the_best2".tr, style: theme.textTheme.displayMedium), TextSpan(text: "lbl_tunecast_now".tr, style: CustomTextStyles.displayMediumffc10606)]), textAlign: TextAlign.center)), SizedBox(height: 39.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.onPrimaryContainer, dotColor: theme.colorScheme.primaryContainer, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_get_started".tr, onPressed: () {onTapGetStarted();})])); } 
/// Navigates to the letsYouInScreen when the action is triggered.
onTapGetStarted() { Get.toNamed(AppRoutes.letsYouInScreen, ); } 
 }
