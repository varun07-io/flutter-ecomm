import 'bloc/sort_by_bloc.dart';
import 'models/sort_by_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class SortByScreen extends StatelessWidget {
  const SortByScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SortByBloc>(
        create: (context) =>
            SortByBloc(SortByState(sortByModelObj: SortByModel()))
              ..add(SortByInitialEvent()),
        child: SortByScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SortByBloc, SortByState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 40.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleftBlueGray300,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  title: AppbarSubtitle(
                      text: "lbl_sort_by".tr,
                      margin: EdgeInsets.only(left: 12.h))),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: Column(children: [
                    Text("lbl_best_match".tr,
                        style: CustomTextStyles.labelLargePrimary),
                    GestureDetector(
                        onTap: () {
                          onTapTxtTimeendingsoone(context);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 17.v),
                            decoration: AppDecoration.fillBlue,
                            child: Text("msg_time_ending_soonest".tr,
                                style: theme.textTheme.labelLarge))),
                    Text("msg_time_newly_listed".tr,
                        style: theme.textTheme.labelLarge),
                    Text("msg_price_shipping".tr,
                        style: theme.textTheme.labelLarge),
                    Text("msg_price_shipping2".tr,
                        style: theme.textTheme.labelLarge),
                    SizedBox(height: 5.v),
                    Text("msg_distance_nearest".tr,
                        style: theme.textTheme.labelLarge)
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

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the offerScreen.
  onTapTxtTimeendingsoone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.offerScreen,
    );
  }
}
