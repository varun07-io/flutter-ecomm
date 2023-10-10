// ignore_for_file: must_be_immutable

part of 'offer_bloc.dart';

/// Represents the state of Offer in the application.
class OfferState extends Equatable {
  OfferState({this.offerModelObj});

  OfferModel? offerModelObj;

  @override
  List<Object?> get props => [
        offerModelObj,
      ];
  OfferState copyWith({OfferModel? offerModelObj}) {
    return OfferState(
      offerModelObj: offerModelObj ?? this.offerModelObj,
    );
  }
}
