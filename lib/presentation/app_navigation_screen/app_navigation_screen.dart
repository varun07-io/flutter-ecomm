import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillOnPrimaryContainer,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray400,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black900)
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration:
                                    AppDecoration.fillOnPrimaryContainer,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapSplashScreen(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_splash_screen".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapRegisterform(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_register_form".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapDashboardContainer(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_dashboard_container"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapOfferScreen(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_offer_screen".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapFavoriteProduct(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_favorite_product"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapProductDetail(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_product_detail".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapReviewProduct(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_review_product".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapWriteReviewFill(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_write_review_fill"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapNotificationOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_notification_one"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapNotificationOffer(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_notification_offer"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapNotificationFeed(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_notification_feed"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapNotification(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_notification".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSearch(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text("lbl_search".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSearchResult(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_search_result".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSearchResultOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_search_result_one"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapListCategory(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_list_category".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSortBy(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_sort_by".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapFilter(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text("lbl_filter".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapShipTo(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_ship_to".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPaymentMethod(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_payment_method".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapChooseCreditOrDebitCard(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_choose_credit_or"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSuccessScreen(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_success_screen".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapProfile(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_profile".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapChangePassword(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_change_password"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapOrder(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text("lbl_order".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapOrderDetails(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_order_details".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAddAddress(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_add_address".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAddress(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_address".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAddPayment(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_add_payment".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapCreditCardAndDebit(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_credit_card_and"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAddCard(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_add_card".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapLailyfaFebrinaCard(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_lailyfa_febrina"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the splashScreen.
  onTapSplashScreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the registerFormScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the registerFormScreen.
  onTapRegisterform(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerFormScreen,
    );
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardContainerScreen.
  onTapDashboardContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the offerScreen.
  onTapOfferScreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.offerScreen,
    );
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the favoriteProductScreen.
  onTapFavoriteProduct(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoriteProductScreen,
    );
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapProductDetail(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDetailScreen,
    );
  }

  /// Navigates to the reviewProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the reviewProductScreen.
  onTapReviewProduct(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reviewProductScreen,
    );
  }

  /// Navigates to the writeReviewFillScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the writeReviewFillScreen.
  onTapWriteReviewFill(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.writeReviewFillScreen,
    );
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationOneScreen.
  onTapNotificationOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneScreen,
    );
  }

  /// Navigates to the notificationOfferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationOfferScreen.
  onTapNotificationOffer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  /// Navigates to the notificationFeedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationFeedScreen.
  onTapNotificationFeed(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationScreen.
  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchScreen.
  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultScreen.
  onTapSearchResult(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }

  /// Navigates to the searchResultOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultOneScreen.
  onTapSearchResultOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultOneScreen,
    );
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the listCategoryScreen.
  onTapListCategory(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.listCategoryScreen,
    );
  }

  /// Navigates to the sortByScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sortByScreen.
  onTapSortBy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sortByScreen,
    );
  }

  /// Navigates to the filterScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the filterScreen.
  onTapFilter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filterScreen,
    );
  }

  /// Navigates to the shipToScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the shipToScreen.
  onTapShipTo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.shipToScreen,
    );
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the paymentMethodScreen.
  onTapPaymentMethod(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  /// Navigates to the chooseCreditOrDebitCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the chooseCreditOrDebitCardScreen.
  onTapChooseCreditOrDebitCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }

  /// Navigates to the successScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the successScreen.
  onTapSuccessScreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successScreen,
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

  /// Navigates to the changePasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the changePasswordScreen.
  onTapChangePassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.changePasswordScreen,
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

  /// Navigates to the orderDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the orderDetailsScreen.
  onTapOrderDetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderDetailsScreen,
    );
  }

  /// Navigates to the addAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addAddressScreen.
  onTapAddAddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addAddressScreen,
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
  onTapAddPayment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addPaymentScreen,
    );
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the creditCardAndDebitScreen.
  onTapCreditCardAndDebit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  /// Navigates to the addCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addCardScreen.
  onTapAddCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardScreen,
    );
  }

  /// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the lailyfaFebrinaCardScreen.
  onTapLailyfaFebrinaCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lailyfaFebrinaCardScreen,
    );
  }
}
