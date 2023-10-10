import 'bloc/change_password_bloc.dart';
import 'models/change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/core/utils/validation_functions.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
        create: (context) => ChangePasswordBloc(
            ChangePasswordState(changePasswordModelObj: ChangePasswordModel()))
          ..add(ChangePasswordInitialEvent()),
        child: ChangePasswordScreen());
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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_change_password".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_old_password".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          BlocSelector<ChangePasswordBloc, ChangePasswordState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "msg".tr,
                                    hintStyle:
                                        CustomTextStyles.labelLargeBluegray300,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgLock)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v));
                              }),
                          SizedBox(height: 23.v),
                          Text("lbl_new_password".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          BlocSelector<ChangePasswordBloc, ChangePasswordState,
                                  TextEditingController?>(
                              selector: (state) => state.newpasswordController,
                              builder: (context, newpasswordController) {
                                return CustomTextFormField(
                                    controller: newpasswordController,
                                    hintText: "msg".tr,
                                    hintStyle:
                                        CustomTextStyles.labelLargeBluegray300,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgLock)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v));
                              }),
                          SizedBox(height: 24.v),
                          Text("msg_new_password_again".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          BlocSelector<ChangePasswordBloc, ChangePasswordState,
                                  TextEditingController?>(
                              selector: (state) => state.newpasswordController1,
                              builder: (context, newpasswordController1) {
                                return CustomTextFormField(
                                    controller: newpasswordController1,
                                    hintText: "msg".tr,
                                    hintStyle:
                                        CustomTextStyles.labelLargeBluegray300,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgLock)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v));
                              }),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_save".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapSave(context);
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

  onTapSave(BuildContext context) {
    // TODO: implement Actions
  }
}
