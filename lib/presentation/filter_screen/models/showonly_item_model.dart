// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [showonly_item_widget] screen.
class ShowonlyItemModel extends Equatable {
  ShowonlyItemModel({
    this.freereturns = "Free Returns",
    this.isSelected = false,
  }) {}

  String freereturns;

  bool isSelected;

  ShowonlyItemModel copyWith({
    String? freereturns,
    bool? isSelected,
  }) {
    return ShowonlyItemModel(
      freereturns: freereturns ?? this.freereturns,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [freereturns, isSelected];
}
