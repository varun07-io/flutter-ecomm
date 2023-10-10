import 'bloc/register_form_bloc.dart';
import 'models/register_form_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/core/utils/validation_functions.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_icon_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class RegisterFormScreen extends StatelessWidget {
  RegisterFormScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterFormBloc>(
        create: (context) => RegisterFormBloc(
            RegisterFormState(registerFormModelObj: RegisterFormModel()))
          ..add(RegisterFormInitialEvent()),
        child: RegisterFormScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              padding: EdgeInsets.all(20.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          SizedBox(height: 16.v),
                          Text("msg_let_s_get_started".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 9.v),
                          Text("msg_create_an_new_account".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 30.v),
                          BlocSelector<RegisterFormBloc, RegisterFormState,
                                  TextEditingController?>(
                              selector: (state) => state.fullNameController,
                              builder: (context, fullNameController) {
                                return CustomTextFormField(
                                    controller: fullNameController,
                                    hintText: "lbl_full_name".tr,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgUser)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v));
                              }),
                          SizedBox(height: 8.v),
                          BlocSelector<RegisterFormBloc, RegisterFormState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_your_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgMail)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v));
                              }),
                          SizedBox(height: 8.v),
                          BlocSelector<RegisterFormBloc, RegisterFormState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
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
                          SizedBox(height: 8.v),
                          BlocSelector<RegisterFormBloc, RegisterFormState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController1,
                              builder: (context, passwordController1) {
                                return CustomTextFormField(
                                    controller: passwordController1,
                                    hintText: "lbl_password_again".tr,
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
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                              text: "lbl_sign_up".tr,
                              onTap: () {
                                onTapSignup(context);
                              }),
                          SizedBox(height: 20.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtHaveanaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/register API and triggers a [CreateRegisterEvent] event on the [RegisterFormBloc] bloc.
  ///
  /// Validates the form and triggers a [CreateRegisterEvent] event on the [RegisterFormBloc] bloc if the form is valid.
  /// The [BuildContext] parameter represents current [BuildContext]
  onTapSignup(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<RegisterFormBloc>().add(
            CreateRegisterEvent(
              onCreateRegisterEventSuccess: () {
                _onRegisterDeviceAuthEventSuccess(context);
              },
              onCreateRegisterEventError: () {
                _onRegisterDeviceAuthEventError(context);
              },
            ),
          );
    }
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [NavigatorService]
  /// to pop the current screen from the navigation stack
  /// and then push the named route for the dashboardContainerScreen.
  /// While navigation passing id, as an argument to the
  /// dashboardContainerScreen
  void _onRegisterDeviceAuthEventSuccess(BuildContext context) {
    NavigatorService.popAndPushNamed(AppRoutes.dashboardContainerScreen,
        arguments: {
          NavigationArgs.id: context
              .read<RegisterFormBloc>()
              .postRegisterDeviceAuthResp
              .data
              ?.id
        });
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onRegisterDeviceAuthEventError(BuildContext context) {
    Fluttertoast.showToast(
        msg: context
                .read<RegisterFormBloc>()
                .postRegisterDeviceAuthResp
                .message
                .toString() ??
            '');
  }

  onTapTxtHaveanaccount(BuildContext context) {
    // TODO: implement Actions
  }
}
