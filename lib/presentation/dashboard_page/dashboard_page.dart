import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbann_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbann_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgSearch,
                    margin:
                        EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
                title: AppbarSubtitle1(
                    text: "lbl_search_product".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    onTap: () {
                      onTapSearchproduct(context);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgDownload,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                      onTap: () {
                        onTapDownloadone(context);
                      }),
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgNotificationicon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgNotificationico(context);
                            }),
                        CustomImageView(
                            svgPath: ImageConstant.imgClosePink300,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                                left: 14.h, right: 2.h, bottom: 16.v))
                      ]))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: BlocBuilder<DashboardBloc,
                                          DashboardState>(
                                      builder: (context, state) {
                                    return CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: 206.v,
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              state.sliderIndex = index;
                                            }),
                                        itemCount: state
                                                .dashboardModelObj
                                                ?.sliderofferbannItemList
                                                .length ??
                                            0,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SliderofferbannItemModel model = state
                                                      .dashboardModelObj
                                                      ?.sliderofferbannItemList[
                                                  index] ??
                                              SliderofferbannItemModel();
                                          return SliderofferbannItemWidget(
                                              model);
                                        });
                                  })),
                              SizedBox(height: 16.v),
                              BlocBuilder<DashboardBloc, DashboardState>(
                                  builder: (context, state) {
                                return SizedBox(
                                    height: 8.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: state.sliderIndex,
                                        count: state
                                                .dashboardModelObj
                                                ?.sliderofferbannItemList
                                                .length ??
                                            0,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                theme.colorScheme.primary,
                                            dotColor: appTheme.blue50,
                                            dotHeight: 8.v,
                                            dotWidth: 8.h)));
                              }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.v, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            style: theme.textTheme.titleSmall),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategorylin(context);
                                            },
                                            child: Text("lbl_more_category".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary))
                                      ])),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 108.v,
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 12.h);
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.categoriesItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  CategoriesItemModel model =
                                                      dashboardModelObj
                                                                  ?.categoriesItemList[
                                                              index] ??
                                                          CategoriesItemModel();
                                                  return CategoriesItemWidget(
                                                      model);
                                                });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapFlashsaleheader(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 16.h);
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.flashsaleItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  FlashsaleItemModel model =
                                                      dashboardModelObj
                                                                  ?.flashsaleItemList[
                                                              index] ??
                                                          FlashsaleItemModel();
                                                  return FlashsaleItemWidget(
                                                      model, onTapProduct: () {
                                                    onTapProduct(context);
                                                  });
                                                });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("lbl_mega_sale".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 16.h);
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.megasaleItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  MegasaleItemModel model =
                                                      dashboardModelObj
                                                                  ?.megasaleItemList[
                                                              index] ??
                                                          MegasaleItemModel();
                                                  return MegasaleItemWidget(
                                                      model, onTapProduct: () {
                                                    onTapProduct(context);
                                                  });
                                                });
                                          }))),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedproduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 16.v, right: 16.h),
                                  child: BlocSelector<DashboardBloc,
                                          DashboardState, DashboardModel?>(
                                      selector: (state) =>
                                          state.dashboardModelObj,
                                      builder: (context, dashboardModelObj) {
                                        return GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent: 283.v,
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 13.h,
                                                    crossAxisSpacing: 13.h),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: dashboardModelObj
                                                    ?.dashboardItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              DashboardItemModel model =
                                                  dashboardModelObj
                                                              ?.dashboardItemList[
                                                          index] ??
                                                      DashboardItemModel();
                                              return DashboardItemWidget(model,
                                                  onTapProduct: () {
                                                onTapProduct(context);
                                              });
                                            });
                                      }))
                            ]))))));
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchScreen.
  onTapSearchproduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.searchScreen);
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the favoriteProductScreen.
  onTapDownloadone(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationOneScreen.
  onTapImgNotificationico(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.notificationOneScreen);
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the listCategoryScreen.
  onTapTxtMorecategorylin(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listCategoryScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the offerScreen.
  onTapFlashsaleheader(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.offerScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the offerScreen.
  onTapMegasaleheader(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.offerScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
    NavigatorService.pushNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
