// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slider_item_model.dart';
import 'sizes_item_model.dart';
import 'recomended_item_model.dart';

/// This class defines the variables used in the [product_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel extends Equatable {
  ProductDetailModel({
    this.sliderItemList = const [],
    this.sizesItemList = const [],
    this.recomendedItemList = const [],
  }) {}

  List<SliderItemModel> sliderItemList;

  List<SizesItemModel> sizesItemList;

  List<RecomendedItemModel> recomendedItemList;

  ProductDetailModel copyWith({
    List<SliderItemModel>? sliderItemList,
    List<SizesItemModel>? sizesItemList,
    List<RecomendedItemModel>? recomendedItemList,
  }) {
    return ProductDetailModel(
      sliderItemList: sliderItemList ?? this.sliderItemList,
      sizesItemList: sizesItemList ?? this.sizesItemList,
      recomendedItemList: recomendedItemList ?? this.recomendedItemList,
    );
  }

  @override
  List<Object?> get props =>
      [sliderItemList, sizesItemList, recomendedItemList];
}
