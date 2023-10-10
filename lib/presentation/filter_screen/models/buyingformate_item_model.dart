// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [buyingformate_item_widget] screen.
class BuyingformateItemModel extends Equatable {
  BuyingformateItemModel({
    this.alllistings = "All Listings",
    this.isSelected = false,
  }) {}

  String alllistings;

  bool isSelected;

  BuyingformateItemModel copyWith({
    String? alllistings,
    bool? isSelected,
  }) {
    return BuyingformateItemModel(
      alllistings: alllistings ?? this.alllistings,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [alllistings, isSelected];
}
