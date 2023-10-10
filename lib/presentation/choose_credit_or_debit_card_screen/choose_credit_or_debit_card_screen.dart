import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';
import 'bloc/choose_credit_or_debit_card_bloc.dart';
import 'models/choose_credit_or_debit_card_model.dart';
import 'models/slidervolume_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image_1.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';

class ChooseCreditOrDebitCardScreen extends StatelessWidget {
  const ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseCreditOrDebitCardBloc>(
        create: (context) => ChooseCreditOrDebitCardBloc(
            ChooseCreditOrDebitCardState(
                chooseCreditOrDebitCardModelObj:
                    ChooseCreditOrDebitCardModel()))
          ..add(ChooseCreditOrDebitCardInitialEvent()),
        child: ChooseCreditOrDebitCardScreen());
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
                    text: "lbl_choose_card".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
                      onTap: () {
                        onTapPlusiconone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  BlocBuilder<ChooseCreditOrDebitCardBloc,
                      ChooseCreditOrDebitCardState>(builder: (context, state) {
                    return CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 190.v,
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              state.sliderIndex = index;
                            }),
                        itemCount: state.chooseCreditOrDebitCardModelObj
                                ?.slidervolumeItemList.length ??
                            0,
                        itemBuilder: (context, index, realIndex) {
                          SlidervolumeItemModel model = state
                                  .chooseCreditOrDebitCardModelObj
                                  ?.slidervolumeItemList[index] ??
                              SlidervolumeItemModel();
                          return SlidervolumeItemWidget(model);
                        });
                  }),
                  SizedBox(height: 16.v),
                  BlocBuilder<ChooseCreditOrDebitCardBloc,
                      ChooseCreditOrDebitCardState>(builder: (context, state) {
                    return SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: state.sliderIndex,
                            count: state.chooseCreditOrDebitCardModelObj
                                    ?.slidervolumeItemList.length ??
                                0,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                spacing: 8,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blue50,
                                dotHeight: 8.v,
                                dotWidth: 8.h)));
                  }),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_pay_766_86".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapPay76686(context);
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

  /// Navigates to the addPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addPaymentScreen.
  onTapPlusiconone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addPaymentScreen,
    );
  }

  /// Navigates to the successScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the successScreen.
  onTapPay76686(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successScreen,
    );
  }
}
