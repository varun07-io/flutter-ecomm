import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/offer_screen_item_model.dart';
import 'package:the_dots_e_commerce/presentation/offer_screen/models/offer_model.dart';
part 'offer_event.dart';
part 'offer_state.dart';

/// A bloc that manages the state of a Offer according to the event that is dispatched to it.
class OfferBloc extends Bloc<OfferEvent, OfferState> {
  OfferBloc(OfferState initialState) : super(initialState) {
    on<OfferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OfferInitialEvent event,
    Emitter<OfferState> emit,
  ) async {
    emit(state.copyWith(
        offerModelObj: state.offerModelObj
            ?.copyWith(offerScreenItemList: fillOfferScreenItemList())));
  }

  List<OfferScreenItemModel> fillOfferScreenItemList() {
    return List.generate(4, (index) => OfferScreenItemModel());
  }
}
