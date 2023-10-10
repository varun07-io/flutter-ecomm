// ignore_for_file: must_be_immutable

part of 'lailyfa_febrina_card_bloc.dart';

/// Represents the state of LailyfaFebrinaCard in the application.
class LailyfaFebrinaCardState extends Equatable {
  LailyfaFebrinaCardState({
    this.cardNumberController,
    this.expirationDateController,
    this.securityCodeController,
    this.cardholdernameController,
    this.lailyfaFebrinaCardModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  TextEditingController? securityCodeController;

  TextEditingController? cardholdernameController;

  LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        expirationDateController,
        securityCodeController,
        cardholdernameController,
        lailyfaFebrinaCardModelObj,
      ];
  LailyfaFebrinaCardState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    TextEditingController? securityCodeController,
    TextEditingController? cardholdernameController,
    LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj,
  }) {
    return LailyfaFebrinaCardState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      securityCodeController:
          securityCodeController ?? this.securityCodeController,
      cardholdernameController:
          cardholdernameController ?? this.cardholdernameController,
      lailyfaFebrinaCardModelObj:
          lailyfaFebrinaCardModelObj ?? this.lailyfaFebrinaCardModelObj,
    );
  }
}
