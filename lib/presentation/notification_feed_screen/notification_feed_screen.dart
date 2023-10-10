import '../notification_feed_screen/widgets/feeds_item_widget.dart';
import 'bloc/notification_feed_bloc.dart';
import 'models/feeds_item_model.dart';
import 'models/notification_feed_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';

class NotificationFeedScreen extends StatelessWidget {
  const NotificationFeedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationFeedBloc>(
        create: (context) => NotificationFeedBloc(NotificationFeedState(
            notificationFeedModelObj: NotificationFeedModel()))
          ..add(NotificationFeedInitialEvent()),
        child: NotificationFeedScreen());
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
                    text: "lbl_feed".tr, margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(top: 11.v),
                child: BlocSelector<NotificationFeedBloc, NotificationFeedState,
                        NotificationFeedModel?>(
                    selector: (state) => state.notificationFeedModelObj,
                    builder: (context, notificationFeedModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 1.v);
                          },
                          itemCount:
                              notificationFeedModelObj?.feedsItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            FeedsItemModel model = notificationFeedModelObj
                                    ?.feedsItemList[index] ??
                                FeedsItemModel();
                            return FeedsItemWidget(model, onTapFeeditem: () {
                              onTapFeeditem(context);
                            });
                          });
                    }))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapFeeditem(BuildContext context) {
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
