import 'bloc/add_address_bloc.dart';
import 'models/add_address_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/core/utils/validation_functions.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddAddressBloc>(
        create: (context) => AddAddressBloc(
            AddAddressState(addAddressModelObj: AddAddressModel()))
          ..add(AddAddressInitialEvent()),
        child: AddAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_add_address".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_country_or_region".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.countryController,
                                            builder:
                                                (context, countryController) {
                                              return CustomTextFormField(
                                                  controller: countryController,
                                                  hintText:
                                                      "msg_enter_the_country"
                                                          .tr);
                                            }),
                                        SizedBox(height: 22.v),
                                        Text("lbl_first_name".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 13.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.firstNameController,
                                            builder:
                                                (context, firstNameController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      firstNameController,
                                                  hintText:
                                                      "msg_enter_the_first".tr,
                                                  validator: (value) {
                                                    if (!isText(value)) {
                                                      return "Please enter valid text";
                                                    }
                                                    return null;
                                                  });
                                            }),
                                        SizedBox(height: 22.v),
                                        Text("lbl_last_name".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.lastNameController,
                                            builder:
                                                (context, lastNameController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      lastNameController,
                                                  hintText:
                                                      "msg_enter_the_last_name"
                                                          .tr,
                                                  validator: (value) {
                                                    if (!isText(value)) {
                                                      return "Please enter valid text";
                                                    }
                                                    return null;
                                                  });
                                            }),
                                        SizedBox(height: 23.v),
                                        Text("lbl_street_address".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.streetaddressController,
                                            builder: (context,
                                                streetaddressController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      streetaddressController,
                                                  hintText:
                                                      "msg_enter_the_street"
                                                          .tr);
                                            }),
                                        SizedBox(height: 21.v),
                                        Text("msg_street_address_2".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 16.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.streetaddressController1,
                                            builder: (context,
                                                streetaddressController1) {
                                              return CustomTextFormField(
                                                  controller:
                                                      streetaddressController1,
                                                  hintText:
                                                      "msg_enter_the_street2"
                                                          .tr);
                                            }),
                                        SizedBox(height: 22.v),
                                        Text("lbl_city".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.cityController,
                                            builder: (context, cityController) {
                                              return CustomTextFormField(
                                                  controller: cityController,
                                                  hintText:
                                                      "lbl_enter_the_city".tr);
                                            }),
                                        SizedBox(height: 23.v),
                                        Text("msg_state_province_region".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.oldpasswordoneController,
                                            builder: (context,
                                                oldpasswordoneController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      oldpasswordoneController,
                                                  hintText:
                                                      "msg_enter_the_state".tr);
                                            }),
                                        SizedBox(height: 24.v),
                                        Text("lbl_zip_code".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.zipcodeController,
                                            builder:
                                                (context, zipcodeController) {
                                              return CustomTextFormField(
                                                  controller: zipcodeController,
                                                  hintText:
                                                      "msg_enter_the_zip_code"
                                                          .tr,
                                                  textInputType:
                                                      TextInputType.number,
                                                  validator: (value) {
                                                    if (!isNumeric(value)) {
                                                      return "Please enter valid number";
                                                    }
                                                    return null;
                                                  });
                                            }),
                                        SizedBox(height: 23.v),
                                        Text("lbl_phone_number".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        BlocSelector<
                                                AddAddressBloc,
                                                AddAddressState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.phoneNumberController,
                                            builder: (context,
                                                phoneNumberController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      phoneNumberController,
                                                  hintText:
                                                      "msg_enter_the_phone".tr,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType:
                                                      TextInputType.phone,
                                                  validator: (value) {
                                                    if (!isValidPhone(value)) {
                                                      return "Please enter valid phone number";
                                                    }
                                                    return null;
                                                  });
                                            })
                                      ]))))
                    ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_address".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addressScreen.
  onTapAddaddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addressScreen,
    );
  }
}
