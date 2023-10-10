import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorite_item_model.dart';
import 'package:the_dots_e_commerce/presentation/favorite_product_screen/models/favorite_product_model.dart';
part 'favorite_product_event.dart';
part 'favorite_product_state.dart';

/// A bloc that manages the state of a FavoriteProduct according to the event that is dispatched to it.
class FavoriteProductBloc
    extends Bloc<FavoriteProductEvent, FavoriteProductState> {
  FavoriteProductBloc(FavoriteProductState initialState) : super(initialState) {
    on<FavoriteProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteProductInitialEvent event,
    Emitter<FavoriteProductState> emit,
  ) async {
    emit(state.copyWith(
        favoriteProductModelObj: state.favoriteProductModelObj
            ?.copyWith(favoriteItemList: fillFavoriteItemList())));
  }

  List<FavoriteItemModel> fillFavoriteItemList() {
    return List.generate(4, (index) => FavoriteItemModel());
  }
}
