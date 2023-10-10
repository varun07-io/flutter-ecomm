// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'ship_to_item_model.dart';

/// This class defines the variables used in the [ship_to_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShipToModel extends Equatable {
  ShipToModel({this.shipToItemList = const []}) {}

  List<ShipToItemModel> shipToItemList;

  ShipToModel copyWith({List<ShipToItemModel>? shipToItemList}) {
    return ShipToModel(
      shipToItemList: shipToItemList ?? this.shipToItemList,
    );
  }

  @override
  List<Object?> get props => [shipToItemList];
}
