import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ship_to_item_model.dart';
import 'package:the_dots_e_commerce/presentation/ship_to_screen/models/ship_to_model.dart';
part 'ship_to_event.dart';
part 'ship_to_state.dart';

/// A bloc that manages the state of a ShipTo according to the event that is dispatched to it.
class ShipToBloc extends Bloc<ShipToEvent, ShipToState> {
  ShipToBloc(ShipToState initialState) : super(initialState) {
    on<ShipToInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShipToInitialEvent event,
    Emitter<ShipToState> emit,
  ) async {
    emit(state.copyWith(
        shipToModelObj: state.shipToModelObj
            ?.copyWith(shipToItemList: fillShipToItemList())));
  }

  List<ShipToItemModel> fillShipToItemList() {
    return List.generate(3, (index) => ShipToItemModel());
  }
}
