import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:manasa/Features/login/data/model/login_request.dart';
import 'package:meta/meta.dart';

import '../../../../core/helper/firebase_result.dart';
import '../../../../core/utils/constants.dart';
import '../../data/repository/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  final LoginRepository repository;
  LoginCubit(this.repository) : super(LoginInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() async {
    emit(LoginLoading());

      LoginRequest loginRequest = LoginRequest(email: emailController.text, password: passwordController.text);

    FirebaseResult<String> result=await repository.login( request: loginRequest);

    checkLoginnResultSuccessOrFailure(result);
  }
  //  get check auth by google or create account by google
  void loginWithGoogle() async {
    emit(LoginGoogleLoading());
    logger.i("Login with Google clicked", stackTrace: StackTrace.current);
    FirebaseResult<User>? result = await repository.loginWithGoogle();
    if(result is Success<User>)
      {
        logger.i("Login with Google successful: ${result.result.uid}", stackTrace: StackTrace.current);
        emit(LoginSuccess());
      }else if(result is Failure<User>)
      {
        logger.e("Error log", error: result.toString());
        emit(LoginFailure(result.toString()));
      }

  }
  void checkLoginnResultSuccessOrFailure( FirebaseResult result ){
    if(result is Success<String>)
    {
      logger.i("Login request: $result", stackTrace: StackTrace.current);
      emit(LoginSuccess());
      logger.i("Success log", stackTrace: StackTrace.fromString( result.toString()));
    }else if(result is Failure<String>)
    {
      logger.e("Error log", error: result.toString());
      emit(LoginFailure(result.toString()));
      logger.e("Error log", error: result.toString());

    }
  }
}
