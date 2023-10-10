// ignore_for_file: must_be_immutable

part of 'offer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Offer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferEvent extends Equatable {}

/// Event that is dispatched when the Offer widget is first created.
class OfferInitialEvent extends OfferEvent {
  @override
  List<Object?> get props => [];
}
