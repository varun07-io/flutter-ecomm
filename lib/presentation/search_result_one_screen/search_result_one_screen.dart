import 'bloc/search_result_one_bloc.dart';
import 'models/search_result_one_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_searchview.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_icon_button.dart';

class SearchResultOneScreen extends StatelessWidget {
  const SearchResultOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultOneBloc>(
        create: (context) => SearchResultOneBloc(SearchResultOneState(
            searchResultOneModelObj: SearchResultOneModel()))
          ..add(SearchResultOneInitialEvent()),
        child: SearchResultOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: BlocSelector<SearchResultOneBloc, SearchResultOneState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          margin: EdgeInsets.only(left: 16.h),
                          hintText: "lbl_search_product".tr,
                          controller: searchController);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSort,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)),
                  AppbarImage1(
                      svgPath: ImageConstant.imgFilter,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h))
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
                                    child: Text("lbl_0_result".tr,
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
                  Spacer(),
                  CustomIconButton(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      padding: EdgeInsets.all(28.h),
                      decoration:
                          IconButtonStyleHelper.outlineSecondaryContainer,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCloseOnprimarycontainer)),
                  SizedBox(height: 15.v),
                  Text("msg_product_not_found".tr,
                      style: CustomTextStyles.headlineSmallOnPrimary),
                  SizedBox(height: 11.v),
                  Text("msg_thank_you_for_shopping".tr,
                      style: theme.textTheme.bodySmall),
                  CustomElevatedButton(
                      text: "lbl_back_to_home".tr,
                      margin: EdgeInsets.all(16.h),
                      onTap: () {
                        onTapBacktohome(context);
                      })
                ]))));
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardContainerScreen.
  onTapBacktohome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
