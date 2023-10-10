import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_searchview_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: BlocSelector<SearchBloc, SearchState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview1(
                          margin: EdgeInsets.only(left: 16.h),
                          hintText: "lbl_nike_air_max".tr,
                          controller: searchController);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMicicon,
                      margin: EdgeInsets.all(16.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Divider(indent: 6.h),
                  SizedBox(height: 9.v),
                  CustomElevatedButton(
                      height: 54.v,
                      text: "msg_nike_air_max_2703".tr,
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      onTap: () {
                        onTapNikeairmax(context);
                      }),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSearchresult(context);
                      },
                      child: Text("msg_nike_air_vapormax".tr,
                          style: theme.textTheme.bodySmall)),
                  Text("msg_nike_air_max_2703".tr,
                      style: theme.textTheme.bodySmall),
                  Text("msg_nike_air_max_2704".tr,
                      style: theme.textTheme.bodySmall),
                  Text("msg_nike_air_vapormax2".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 5.v),
                  Text("msg_nike_air_max_97".tr,
                      style: theme.textTheme.bodySmall)
                ]))));
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultScreen.
  onTapNikeairmax(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultScreen.
  onTapTxtSearchresult(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
