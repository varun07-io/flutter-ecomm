import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_dots_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
