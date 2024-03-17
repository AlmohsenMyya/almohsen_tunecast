import 'widgets/historymusic_item_widget.dart';import 'models/historymusic_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/history_music_controller.dart';import 'models/history_music_model.dart';
// ignore_for_file: must_be_immutable
class HistoryMusicPage extends StatelessWidget {HistoryMusicPage({Key? key}) : super(key: key);

HistoryMusicController controller = Get.put(HistoryMusicController(HistoryMusicModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 30.v), _buildHistoryMusic()])))); } 
/// Section Widget
Widget _buildHistoryMusic() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.historyMusicModelObj.value.historymusicItemList.value.length, itemBuilder: (context, index) {HistorymusicItemModel model = controller.historyMusicModelObj.value.historymusicItemList.value[index]; return HistorymusicItemWidget(model, onTapSongCard: () {onTapSongCard();});}))); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
