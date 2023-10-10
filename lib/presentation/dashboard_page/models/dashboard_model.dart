// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sliderofferbann_item_model.dart';
import 'categories_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'dashboard_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.sliderofferbannItemList = const [],
    this.categoriesItemList = const [],
    this.flashsaleItemList = const [],
    this.megasaleItemList = const [],
    this.dashboardItemList = const [],
  }) {}

  List<SliderofferbannItemModel> sliderofferbannItemList;

  List<CategoriesItemModel> categoriesItemList;

  List<FlashsaleItemModel> flashsaleItemList;

  List<MegasaleItemModel> megasaleItemList;

  List<DashboardItemModel> dashboardItemList;

  DashboardModel copyWith({
    List<SliderofferbannItemModel>? sliderofferbannItemList,
    List<CategoriesItemModel>? categoriesItemList,
    List<FlashsaleItemModel>? flashsaleItemList,
    List<MegasaleItemModel>? megasaleItemList,
    List<DashboardItemModel>? dashboardItemList,
  }) {
    return DashboardModel(
      sliderofferbannItemList:
          sliderofferbannItemList ?? this.sliderofferbannItemList,
      categoriesItemList: categoriesItemList ?? this.categoriesItemList,
      flashsaleItemList: flashsaleItemList ?? this.flashsaleItemList,
      megasaleItemList: megasaleItemList ?? this.megasaleItemList,
      dashboardItemList: dashboardItemList ?? this.dashboardItemList,
    );
  }

  @override
  List<Object?> get props => [
        sliderofferbannItemList,
        categoriesItemList,
        flashsaleItemList,
        megasaleItemList,
        dashboardItemList
      ];
}
