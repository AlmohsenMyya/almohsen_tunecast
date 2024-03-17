import 'widgets/artistslist1_item_widget.dart';
import 'models/artistslist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/artists_controller.dart';
import 'models/artists_model.dart';

class ArtistsPage extends StatelessWidget {
  ArtistsPage({Key? key})
      : super(
          key: key,
        );

  ArtistsController controller = Get.put(ArtistsController(ArtistsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildHorizontalLayout(),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 29.v),
                      _buildArtistsList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "msg_recently_downloaded".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildArtistsList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount:
            controller.artistsModelObj.value.artistslist1ItemList.value.length,
        itemBuilder: (context, index) {
          Artistslist1ItemModel model = controller
              .artistsModelObj.value.artistslist1ItemList.value[index];
          return Artistslist1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
