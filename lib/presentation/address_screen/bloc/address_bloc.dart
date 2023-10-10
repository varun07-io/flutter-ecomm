import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/address_screen/models/address_model.dart';
part 'address_event.dart';
part 'address_state.dart';

/// A bloc that manages the state of a Address according to the event that is dispatched to it.
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc(AddressState initialState) : super(initialState) {
    on<AddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressInitialEvent event,
    Emitter<AddressState> emit,
  ) async {}
}
