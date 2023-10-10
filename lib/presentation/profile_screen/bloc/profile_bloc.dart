import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/profile_screen/models/profile_model.dart';
import 'package:the_dots_e_commerce/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:the_dots_e_commerce/data/repository/repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<FetchMeEvent>(_callFetchMe);
  }

  final _repository = Repository();

  var getMeResp = GetMeResp();

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [ProfileBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    add(
      FetchMeEvent(),
    );
  }

  /// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/me] with the provided event and emits the state.
  ///
  /// The [FetchMeEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callFetchMe(
    FetchMeEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await _repository.fetchMe(
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3NzgxOTg3MH0.uDqLLt9IUCaUjLkbw4y_7A6OGS6NX2irkXdJ3-2Ebbs',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
    });
  }

  void _onFetchMeSuccess(
    GetMeResp resp,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
          username: resp.data?.username ?? '',
          email: resp.data?.email ?? '',
          name: resp.data?.name ?? '',
        ),
      ),
    );
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
