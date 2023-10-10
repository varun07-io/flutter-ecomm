// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel extends Equatable {
  CartModel() {}

  CartModel copyWith() {
    return CartModel();
  }

  @override
  List<Object?> get props => [];
}
