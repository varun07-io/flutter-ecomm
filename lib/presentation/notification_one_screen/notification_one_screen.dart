import 'bloc/notification_one_bloc.dart';
import 'models/notification_one_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';

class NotificationOneScreen extends StatelessWidget {
  const NotificationOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationOneBloc>(
        create: (context) => NotificationOneBloc(NotificationOneState(
            notificationOneModelObj: NotificationOneModel()))
          ..add(NotificationOneInitialEvent()),
        child: NotificationOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<NotificationOneBloc, NotificationOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 40.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleftBlueGray300,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  title: AppbarSubtitle(
                      text: "lbl_notification".tr,
                      margin: EdgeInsets.only(left: 12.h))),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child: Column(children: [
                    CustomElevatedButton(
                        text: "lbl_offer".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgOffer)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        onTap: () {
                          onTapOffer(context);
                        }),
                    CustomElevatedButton(
                        text: "lbl_feed".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgListIcon)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        onTap: () {
                          onTapFeed(context);
                        }),
                    SizedBox(height: 5.v),
                    CustomElevatedButton(
                        text: "lbl_acivity".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgNotificationIconPrimary)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        onTap: () {
                          onTapAcivity(context);
                        })
                  ]))));
    });
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

  /// Navigates to the notificationOfferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationOfferScreen.
  onTapOffer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  /// Navigates to the notificationFeedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationFeedScreen.
  onTapFeed(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationScreen.
  onTapAcivity(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }
}
