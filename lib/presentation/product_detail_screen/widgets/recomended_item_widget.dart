import '../models/recomended_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class RecomendedItemWidget extends StatelessWidget {
  RecomendedItemWidget(
    this.recomendedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecomendedItemModel recomendedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.outlineBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProductimage,
                height: 109.adaptSize,
                width: 109.adaptSize,
                radius: BorderRadius.circular(
                  5.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                recomendedItemModelObj.fsnikeairmax!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_299_43".tr,
                style: CustomTextStyles.labelLargePrimary,
              ),
              SizedBox(height: 9.v),
              Row(
                children: [
                  Text(
                    "lbl_534_33".tr,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_24_off".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
