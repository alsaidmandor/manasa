import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:manasa/Features/login/data/model/login_request.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/constants.dart';
import '../../data/repository/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  final LoginRepository repository;
  LoginCubit(this.repository) : super(LoginInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String email, String password) async {
    emit(LoginLoading());
    try {
      LoginRequest loginRequest = LoginRequest(email: email, password: password);

      await repository.login( request: loginRequest);
      logger.i("Login request: $loginRequest", stackTrace: StackTrace.current);
      emit(LoginSuccess());
    } catch (error) {
      logger.e("Error log", error: error.toString());
      emit(LoginFailure(error.toString()));
    }
  }
}
