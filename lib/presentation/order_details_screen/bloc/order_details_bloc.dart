import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/order_details_screen/models/order_details_model.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

/// A bloc that manages the state of a OrderDetails according to the event that is dispatched to it.
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  OrderDetailsBloc(OrderDetailsState initialState) : super(initialState) {
    on<OrderDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderDetailsInitialEvent event,
    Emitter<OrderDetailsState> emit,
  ) async {}
}
