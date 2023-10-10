// ignore_for_file: must_be_immutable

part of 'add_address_bloc.dart';

/// Represents the state of AddAddress in the application.
class AddAddressState extends Equatable {
  AddAddressState({
    this.countryController,
    this.firstNameController,
    this.lastNameController,
    this.streetaddressController,
    this.streetaddressController1,
    this.cityController,
    this.oldpasswordoneController,
    this.zipcodeController,
    this.phoneNumberController,
    this.addAddressModelObj,
  });

  TextEditingController? countryController;

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? streetaddressController;

  TextEditingController? streetaddressController1;

  TextEditingController? cityController;

  TextEditingController? oldpasswordoneController;

  TextEditingController? zipcodeController;

  TextEditingController? phoneNumberController;

  AddAddressModel? addAddressModelObj;

  @override
  List<Object?> get props => [
        countryController,
        firstNameController,
        lastNameController,
        streetaddressController,
        streetaddressController1,
        cityController,
        oldpasswordoneController,
        zipcodeController,
        phoneNumberController,
        addAddressModelObj,
      ];
  AddAddressState copyWith({
    TextEditingController? countryController,
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? streetaddressController,
    TextEditingController? streetaddressController1,
    TextEditingController? cityController,
    TextEditingController? oldpasswordoneController,
    TextEditingController? zipcodeController,
    TextEditingController? phoneNumberController,
    AddAddressModel? addAddressModelObj,
  }) {
    return AddAddressState(
      countryController: countryController ?? this.countryController,
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      streetaddressController:
          streetaddressController ?? this.streetaddressController,
      streetaddressController1:
          streetaddressController1 ?? this.streetaddressController1,
      cityController: cityController ?? this.cityController,
      oldpasswordoneController:
          oldpasswordoneController ?? this.oldpasswordoneController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      addAddressModelObj: addAddressModelObj ?? this.addAddressModelObj,
    );
  }
}
