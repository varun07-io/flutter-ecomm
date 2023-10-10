// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel extends Equatable {
  ProfileModel({
    this.name = "",
    this.username = "",
    this.email = "",
  }) {}

  String name;

  String username;

  String email;

  ProfileModel copyWith({
    String? name,
    String? username,
    String? email,
  }) {
    return ProfileModel(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  @override
  List<Object?> get props => [name, username, email];
}
