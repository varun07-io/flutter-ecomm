// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'offer_screen_item_model.dart';

/// This class defines the variables used in the [offer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferModel extends Equatable {
  OfferModel({this.offerScreenItemList = const []}) {}

  List<OfferScreenItemModel> offerScreenItemList;

  OfferModel copyWith({List<OfferScreenItemModel>? offerScreenItemList}) {
    return OfferModel(
      offerScreenItemList: offerScreenItemList ?? this.offerScreenItemList,
    );
  }

  @override
  List<Object?> get props => [offerScreenItemList];
}
