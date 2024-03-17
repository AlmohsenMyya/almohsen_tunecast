import '../models/playback_item_model.dart';
import '../controller/playback_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PlaybackItemWidget extends StatelessWidget {
  PlaybackItemWidget(
    this.playbackItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaybackItemModel playbackItemModelObj;

  var controller = Get.find<PlaybackController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  playbackItemModelObj.automix!.value,
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 272.h,
                child: Obx(
                  () => Text(
                    playbackItemModelObj.allowsSeamless!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallMedium.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => CustomSwitch(
            margin: EdgeInsets.only(
              left: 63.h,
              top: 20.v,
              bottom: 24.v,
            ),
            value: playbackItemModelObj.isSelectedSwitch!.value,
            onChange: (value) {
              playbackItemModelObj.isSelectedSwitch!.value = value ?? false;
            },
          ),
        ),
      ],
    );
  }
}
