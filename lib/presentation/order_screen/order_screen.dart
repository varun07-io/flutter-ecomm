import '../order_screen/widgets/order_item_widget.dart';
import 'bloc/order_bloc.dart';
import 'models/order_item_model.dart';
import 'models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderBloc>(
        create: (context) => OrderBloc(OrderState(orderModelObj: OrderModel()))
          ..add(OrderInitialEvent()),
        child: OrderScreen());
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
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_order".tr, margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 15.h, top: 19.v, right: 15.h),
                child: BlocSelector<OrderBloc, OrderState, OrderModel?>(
                    selector: (state) => state.orderModelObj,
                    builder: (context, orderModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 10.v);
                          },
                          itemCount: orderModelObj?.orderItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            OrderItemModel model =
                                orderModelObj?.orderItemList[index] ??
                                    OrderItemModel();
                            return OrderItemWidget(model, onTapOrder: () {
                              onTapOrder(context);
                            });
                          });
                    }))));
  }

  /// Navigates to the orderDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the orderDetailsScreen.
  onTapOrder(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.orderDetailsScreen);
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
