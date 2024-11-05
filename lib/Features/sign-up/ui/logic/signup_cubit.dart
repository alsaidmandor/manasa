import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:manasa/Features/sign-up/data/model/signup_request.dart';
import 'package:manasa/Features/sign-up/data/repo/signup_repository.dart';
import 'package:meta/meta.dart';

import '../../../../core/helper/firebase_result.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/constants.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepository repository;

  SignupCubit(this.repository) : super(SignupInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void createAccount() {

    emit(SignupLoading());
    SignupRequest signup = SignupRequest(
      Name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
    );
    logger.d("signup request: $signup", stackTrace: StackTrace.current);
    FirebaseResult<String> result= repository.createAccount( request: signup);
    logger.i("signup request: $signup", stackTrace: StackTrace.current);

    checkSignupResultSuccessOrFailure(result);

  }
  void checkSignupResultSuccessOrFailure( FirebaseResult result ){
    if(result is Success<String>)
    {
      emit(SignupSuccess(result.toString()));
      logger.i("Success log", stackTrace: StackTrace.fromString( result.toString()));
    }else if(result is Failure<String>)
    {
      logger.e("Error log", error: result.toString());
      emit(SignupFailure(result.toString()));
    }
  }
}


