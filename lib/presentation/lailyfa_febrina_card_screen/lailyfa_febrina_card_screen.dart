import 'bloc/lailyfa_febrina_card_bloc.dart';
import 'models/lailyfa_febrina_card_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_text_form_field.dart';

class LailyfaFebrinaCardScreen extends StatelessWidget {
  const LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LailyfaFebrinaCardBloc>(
        create: (context) => LailyfaFebrinaCardBloc(LailyfaFebrinaCardState(
            lailyfaFebrinaCardModelObj: LailyfaFebrinaCardModel()))
          ..add(LailyfaFebrinaCardInitialEvent()),
        child: LailyfaFebrinaCardScreen());
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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "msg_lailyfa_febrina".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 23.v),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: 22.v,
                                                  width: 36.h,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h)),
                                              SizedBox(height: 30.v),
                                              Text("msg_6326_9124".tr,
                                                  style: theme
                                                      .textTheme.headlineSmall),
                                              SizedBox(height: 17.v),
                                              Row(children: [
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Text(
                                                            "lbl_card_holder"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10))),
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 37.h),
                                                        child: Text(
                                                            "lbl_card_save".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10)))
                                              ]),
                                              SizedBox(height: 1.v),
                                              Row(children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text(
                                                        "lbl_lailyfa_febrina"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 32.h,
                                                        bottom: 3.v),
                                                    child: Text("lbl_06_24".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer))
                                              ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("lbl_card_number".tr,
                                            style: theme.textTheme.titleSmall)),
                                    BlocSelector<
                                            LailyfaFebrinaCardBloc,
                                            LailyfaFebrinaCardState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.cardNumberController,
                                        builder:
                                            (context, cardNumberController) {
                                          return CustomTextFormField(
                                              controller: cardNumberController,
                                              margin: EdgeInsets.only(
                                                  left: 2.h, top: 12.v),
                                              hintText: "msg_1231_2312_3123".tr,
                                              hintStyle: CustomTextStyles
                                                  .labelLargeBluegray300SemiBold,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 15.v));
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 24.v),
                                        child: Text("lbl_expiration_date".tr,
                                            style: theme.textTheme.titleSmall)),
                                    BlocSelector<
                                            LailyfaFebrinaCardBloc,
                                            LailyfaFebrinaCardState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.expirationDateController,
                                        builder: (context,
                                            expirationDateController) {
                                          return CustomTextFormField(
                                              controller:
                                                  expirationDateController,
                                              margin: EdgeInsets.only(
                                                  left: 2.h, top: 11.v),
                                              hintText: "lbl_12_12".tr,
                                              hintStyle: CustomTextStyles
                                                  .labelLargeBluegray300SemiBold,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 15.v));
                                        }),
                                    SizedBox(height: 29.v),
                                    Text("lbl_security_code".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    BlocSelector<
                                            LailyfaFebrinaCardBloc,
                                            LailyfaFebrinaCardState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.securityCodeController,
                                        builder:
                                            (context, securityCodeController) {
                                          return CustomTextFormField(
                                              controller:
                                                  securityCodeController,
                                              hintText: "lbl_1219".tr,
                                              hintStyle: CustomTextStyles
                                                  .labelLargeBluegray300SemiBold,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 15.v));
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("lbl_card_holder2".tr,
                                            style: theme.textTheme.titleSmall)),
                                    BlocSelector<
                                            LailyfaFebrinaCardBloc,
                                            LailyfaFebrinaCardState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.cardholdernameController,
                                        builder: (context,
                                            cardholdernameController) {
                                          return CustomTextFormField(
                                              controller:
                                                  cardholdernameController,
                                              margin: EdgeInsets.only(
                                                  left: 2.h, top: 12.v),
                                              hintText:
                                                  "lbl_lailyfa_febrina".tr,
                                              hintStyle: CustomTextStyles
                                                  .labelLargeBluegray300SemiBold,
                                              textInputAction:
                                                  TextInputAction.done,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 15.v));
                                        })
                                  ]))))
                ])),
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

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the creditCardAndDebitScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }
}
