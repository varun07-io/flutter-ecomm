import 'bloc/write_review_fill_bloc.dart';
import 'models/write_review_fill_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_dots_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_elevated_button.dart';
import 'package:the_dots_e_commerce/widgets/custom_rating_bar.dart';
import 'package:the_dots_e_commerce/widgets/custom_text_form_field.dart';

class WriteReviewFillScreen extends StatelessWidget {
  const WriteReviewFillScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WriteReviewFillBloc>(
        create: (context) => WriteReviewFillBloc(WriteReviewFillState(
            writeReviewFillModelObj: WriteReviewFillModel()))
          ..add(WriteReviewFillInitialEvent()),
        child: WriteReviewFillScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                    text: "lbl_write_review".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 343.h,
                          child: Text("msg_please_write_overall".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 13.v),
                      CustomRatingBar(initialRating: 4, itemSize: 32),
                      SizedBox(height: 22.v),
                      Text("msg_write_your_review".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      BlocSelector<WriteReviewFillBloc, WriteReviewFillState,
                              TextEditingController?>(
                          selector: (state) => state.addreviewoneController,
                          builder: (context, addreviewoneController) {
                            return CustomTextFormField(
                                controller: addreviewoneController,
                                hintText: "lbl_add_review".tr,
                                hintStyle:
                                    CustomTextStyles.labelLargeBluegray300,
                                textInputAction: TextInputAction.done,
                                maxLines: 8,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.h, vertical: 17.v));
                          }),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_write_review".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v),
                onTap: () {
                  onTapWritereview(context);
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

  /// Navigates to the reviewProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the reviewProductScreen.
  onTapWritereview(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.reviewProductScreen,
    );
  }
}
