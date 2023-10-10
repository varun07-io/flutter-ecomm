import 'bloc/account_bloc.dart';
import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_title.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountBloc>(
        create: (context) =>
            AccountBloc(AccountState(accountModelObj: AccountModel()))
              ..add(AccountInitialEvent()),
        child: AccountPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  title: AppbarTitle(
                      text: "lbl_account".tr,
                      margin: EdgeInsets.only(left: 16.h)),
                  actions: [
                    AppbarImage1(
                        svgPath: ImageConstant.imgNotificationicon,
                        margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v),
                        onTap: () {
                          onTapNotificationico(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: Column(children: [
                    CustomElevatedButton(
                        text: "lbl_profile".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgUserPrimary)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        onTap: () {
                          onTapProfile(context);
                        }),
                    GestureDetector(
                        onTap: () {
                          onTapOrder(context);
                        },
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(16.h),
                            decoration: AppDecoration.fillBlue,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgBagicon,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.h, top: 2.v, bottom: 3.v),
                                      child: Text("lbl_order".tr,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                    GestureDetector(
                        onTap: () {
                          onTapAddress(context);
                        },
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(16.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgLocation,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.h, top: 2.v, bottom: 3.v),
                                      child: Text("lbl_address".tr,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                    SizedBox(height: 5.v),
                    CustomElevatedButton(
                        text: "lbl_payment".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCreditCardIcon)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        onTap: () {
                          onTapPayment(context);
                        })
                  ]))));
    });
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationOneScreen.
  onTapNotificationico(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the profileScreen.
  onTapProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the orderScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the orderScreen.
  onTapOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderScreen,
    );
  }

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addressScreen.
  onTapAddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addressScreen,
    );
  }

  /// Navigates to the addPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addPaymentScreen.
  onTapPayment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addPaymentScreen,
    );
  }
}
