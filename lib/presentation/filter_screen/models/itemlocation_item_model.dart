// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [itemlocation_item_widget] screen.
class ItemlocationItemModel extends Equatable {
  ItemlocationItemModel({
    this.usonly = "US Only",
    this.isSelected = false,
  }) {}

  String usonly;

  bool isSelected;

  ItemlocationItemModel copyWith({
    String? usonly,
    bool? isSelected,
  }) {
    return ItemlocationItemModel(
      usonly: usonly ?? this.usonly,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [usonly, isSelected];
}
