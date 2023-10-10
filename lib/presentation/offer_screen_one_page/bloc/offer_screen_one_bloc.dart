import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/offer_screen_one_page/models/offer_screen_one_model.dart';
part 'offer_screen_one_event.dart';
part 'offer_screen_one_state.dart';

/// A bloc that manages the state of a OfferScreenOne according to the event that is dispatched to it.
class OfferScreenOneBloc
    extends Bloc<OfferScreenOneEvent, OfferScreenOneState> {
  OfferScreenOneBloc(OfferScreenOneState initialState) : super(initialState) {
    on<OfferScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OfferScreenOneInitialEvent event,
    Emitter<OfferScreenOneState> emit,
  ) async {}
}
