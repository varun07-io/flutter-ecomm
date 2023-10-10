import '../favorite_product_screen/widgets/favorite_item_widget.dart';
import 'bloc/favorite_product_bloc.dart';
import 'models/favorite_item_model.dart';
import 'models/favorite_product_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class FavoriteProductScreen extends StatelessWidget {
  const FavoriteProductScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoriteProductBloc>(
        create: (context) => FavoriteProductBloc(FavoriteProductState(
            favoriteProductModelObj: FavoriteProductModel()))
          ..add(FavoriteProductInitialEvent()),
        child: FavoriteProductScreen());
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
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "msg_favorite_product".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 8.v, right: 16.h),
                child: BlocSelector<FavoriteProductBloc, FavoriteProductState,
                        FavoriteProductModel?>(
                    selector: (state) => state.favoriteProductModelObj,
                    builder: (context, favoriteProductModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 283.v,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 13.h,
                                  crossAxisSpacing: 13.h),
                          physics: BouncingScrollPhysics(),
                          itemCount: favoriteProductModelObj
                                  ?.favoriteItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            FavoriteItemModel model = favoriteProductModelObj
                                    ?.favoriteItemList[index] ??
                                FavoriteItemModel();
                            return FavoriteItemWidget(model, onTapProduct: () {
                              onTapProduct(context);
                            });
                          });
                    }))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
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
}
