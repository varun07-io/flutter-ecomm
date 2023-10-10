import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'bloc/search_result_bloc.dart';
import 'models/search_result_item_model.dart';
import 'models/search_result_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_searchview_2.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
        create: (context) => SearchResultBloc(
            SearchResultState(searchResultModelObj: SearchResultModel()))
          ..add(SearchResultInitialEvent()),
        child: SearchResultScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: BlocSelector<SearchResultBloc, SearchResultState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview2(
                          margin: EdgeInsets.only(left: 16.h),
                          hintText: "lbl_nike_air_max".tr,
                          controller: searchController);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSort,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                      onTap: () {
                        onTapSortone(context);
                      }),
                  AppbarImage1(
                      svgPath: ImageConstant.imgFilter,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
                      onTap: () {
                        onTapFilterone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Divider(),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 15.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text("lbl_145_result".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimary))),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                                child: Text("lbl_man_shoes".tr,
                                    style: theme.textTheme.labelLarge)),
                            CustomImageView(
                                svgPath: ImageConstant.imgDownicon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 8.h))
                          ])),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, top: 16.v, right: 16.h),
                          child: BlocSelector<SearchResultBloc,
                                  SearchResultState, SearchResultModel?>(
                              selector: (state) => state.searchResultModelObj,
                              builder: (context, searchResultModelObj) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent: 283.v,
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 13.h,
                                            crossAxisSpacing: 13.h),
                                    physics: BouncingScrollPhysics(),
                                    itemCount: searchResultModelObj
                                            ?.searchResultItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      SearchResultItemModel model =
                                          searchResultModelObj
                                                      ?.searchResultItemList[
                                                  index] ??
                                              SearchResultItemModel();
                                      return SearchResultItemWidget(model,
                                          onTapProduct: () {
                                        onTapProduct(context);
                                      });
                                    });
                              })))
                ]))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  /// Navigates to the sortByScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sortByScreen.
  onTapSortone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sortByScreen,
    );
  }

  /// Navigates to the filterScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the filterScreen.
  onTapFilterone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filterScreen,
    );
  }
}
