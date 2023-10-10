import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/register_form_screen/models/register_form_model.dart';
import 'package:the_dots_e_commerce/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:the_dots_e_commerce/data/models/registerDeviceAuth/post_register_device_auth_req.dart';
import 'dart:async';
import 'package:the_dots_e_commerce/data/repository/repository.dart';
import 'package:the_dots_e_commerce/core/constants/role.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

/// A bloc that manages the state of a RegisterForm according to the event that is dispatched to it.
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc(RegisterFormState initialState) : super(initialState) {
    on<RegisterFormInitialEvent>(_onInitialize);
    on<CreateRegisterEvent>(_callRegisterDeviceAuth);
  }

  final _repository = Repository();

  var postRegisterDeviceAuthResp = PostRegisterDeviceAuthResp();

  _onInitialize(
    RegisterFormInitialEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordController1: TextEditingController()));
  }

  /// Calls [https://nodedemo.dhiwise.co/device/auth/register] with the provided event and emits the state.
  ///
  /// The [CreateRegisterEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callRegisterDeviceAuth(
    CreateRegisterEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    var postRegisterDeviceAuthReq = PostRegisterDeviceAuthReq(
      username: state.emailController?.text ?? '',
      password: state.passwordController?.text ?? '',
      email: state.emailController?.text ?? '',
      name: state.fullNameController?.text ?? '',
      role: Role.user,
    );
    await _repository.registerDeviceAuth(
      headers: {
        'Content-type': 'application/json',
      },
      requestData: postRegisterDeviceAuthReq.toJson(),
    ).then((value) async {
      postRegisterDeviceAuthResp = value;
      _onRegisterDeviceAuthSuccess(value, emit);
      event.onCreateRegisterEventSuccess?.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onRegisterDeviceAuthError();
      event.onCreateRegisterEventError?.call();
    });
  }

  void _onRegisterDeviceAuthSuccess(
    PostRegisterDeviceAuthResp resp,
    Emitter<RegisterFormState> emit,
  ) {
    PrefUtils().setId(resp.data?.id ?? '');
    emit(
      state.copyWith(
        registerFormModelObj: state.registerFormModelObj?.copyWith(),
      ),
    );
  }

  void _onRegisterDeviceAuthError() {
    //implement error method body...
  }
}
