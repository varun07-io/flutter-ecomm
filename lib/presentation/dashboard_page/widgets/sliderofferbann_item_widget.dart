import '../models/sliderofferbann_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class SliderofferbannItemWidget extends StatelessWidget {
  SliderofferbannItemWidget(
    this.sliderofferbannItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderofferbannItemModel sliderofferbannItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionimage,
            height: 206.v,
            width: 343.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_super_flash_sale_50".tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_08".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_34".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_52".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
