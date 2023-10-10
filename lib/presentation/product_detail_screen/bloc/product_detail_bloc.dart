import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
import '../models/sizes_item_model.dart';
import '../models/recomended_item_model.dart';
import 'package:the_dots_e_commerce/presentation/product_detail_screen/models/product_detail_model.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

/// A bloc that manages the state of a ProductDetail according to the event that is dispatched to it.
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(ProductDetailState initialState) : super(initialState) {
    on<ProductDetailInitialEvent>(_onInitialize);
  }

  List<SliderItemModel> fillSliderItemList() {
    return List.generate(1, (index) => SliderItemModel());
  }

  List<SizesItemModel> fillSizesItemList() {
    return List.generate(6, (index) => SizesItemModel());
  }

  List<RecomendedItemModel> fillRecomendedItemList() {
    return List.generate(3, (index) => RecomendedItemModel());
  }

  _onInitialize(
    ProductDetailInitialEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        productDetailModelObj: state.productDetailModelObj?.copyWith(
            sliderItemList: fillSliderItemList(),
            sizesItemList: fillSizesItemList(),
            recomendedItemList: fillRecomendedItemList())));
  }
}
