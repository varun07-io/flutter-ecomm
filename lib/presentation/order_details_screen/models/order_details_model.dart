// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel extends Equatable {
  OrderDetailsModel() {}

  OrderDetailsModel copyWith() {
    return OrderDetailsModel();
  }

  @override
  List<Object?> get props => [];
}
