import 'bloc/offer_screen_one_bloc.dart';
import 'models/offer_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_title.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class OfferScreenOnePage extends StatelessWidget {
  const OfferScreenOnePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OfferScreenOneBloc>(
        create: (context) => OfferScreenOneBloc(
            OfferScreenOneState(offerScreenOneModelObj: OfferScreenOneModel()))
          ..add(OfferScreenOneInitialEvent()),
        child: OfferScreenOnePage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OfferScreenOneBloc, OfferScreenOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  title: AppbarTitle(
                      text: "lbl_offer".tr,
                      margin: EdgeInsets.only(left: 16.h)),
                  actions: [
                    AppbarImage1(
                        svgPath: ImageConstant.imgNotificationicon,
                        margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v),
                        onTap: () {
                          onTapNotificationico(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                  child: Column(children: [
                    Container(
                        width: 343.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 17.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: SizedBox(
                            width: 201.h,
                            child: Text("msg_use_megsl_cupon".tr,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer
                                    .copyWith(height: 1.50)))),
                    SizedBox(height: 16.v),
                    SizedBox(
                        height: 206.v,
                        width: 343.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgPromotionimage,
                              height: 206.v,
                              width: 343.h,
                              radius: BorderRadius.circular(5.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 209.h,
                                            child: Text(
                                                "msg_super_flash_sale_50".tr,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.headlineSmall!
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 31.v),
                                        Row(children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 9.h,
                                                  vertical: 8.v),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                              child: Text("lbl_08".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 10.v,
                                                  bottom: 9.v),
                                              child: Text("lbl".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer)),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 9.h,
                                                  vertical: 8.v),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                              child: Text("lbl_34".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 10.v,
                                                  bottom: 9.v),
                                              child: Text("lbl".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer)),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.h,
                                                  vertical: 8.v),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                              child: Text("lbl_52".tr,
                                                  style: theme
                                                      .textTheme.titleMedium))
                                        ])
                                      ])))
                        ])),
                    SizedBox(height: 16.v),
                    SizedBox(
                        height: 206.v,
                        width: 343.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRecomendedproduct,
                              height: 206.v,
                              width: 343.h,
                              radius: BorderRadius.circular(5.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 24.h, top: 31.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 252.h,
                                            child: Text(
                                                "msg_90_off_super_mega".tr,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.headlineSmall!
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 21.v),
                                        Text("msg_special_birthday".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimaryContainer)
                                      ])))
                        ])),
                    SizedBox(height: 5.v)
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
}
