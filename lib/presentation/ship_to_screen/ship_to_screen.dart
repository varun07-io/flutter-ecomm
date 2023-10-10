import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'bloc/ship_to_bloc.dart';
import 'models/ship_to_item_model.dart';
import 'models/ship_to_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';

class ShipToScreen extends StatelessWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShipToBloc>(
        create: (context) =>
            ShipToBloc(ShipToState(shipToModelObj: ShipToModel()))
              ..add(ShipToInitialEvent()),
        child: ShipToScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_ship_to".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v),
                      onTap: () {
                        onTapPlusiconone(context);
                      })
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 4.v, right: 16.h),
                child: BlocSelector<ShipToBloc, ShipToState, ShipToModel?>(
                    selector: (state) => state.shipToModelObj,
                    builder: (context, shipToModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 22.v);
                          },
                          itemCount: shipToModelObj?.shipToItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            ShipToItemModel model =
                                shipToModelObj?.shipToItemList[index] ??
                                    ShipToItemModel();
                            return ShipToItemWidget(model);
                          });
                    })),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapNext(context);
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

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addressScreen.
  onTapPlusiconone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addressScreen,
    );
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the paymentMethodScreen.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
