// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/helper/firebase_result.dart';
import '../../../../core/utils/constants.dart';
import '../../data/repository/forget_password_repository.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {

  final ForgetPasswordRepository repository;
  ForgetPasswordCubit(this.repository) : super(ForgetPasswordInitial());

  TextEditingController emailController = TextEditingController();

//   emit forget password  by using  reset password
 void emitForgetPassword() async {
   emit( ForgetPasswordLoading() );
    logger.i("Forget password clicked", stackTrace: StackTrace.current);
      final result = await repository.forgotPassword(email: emailController.text);
      logger.i("Forget password result: $result", stackTrace: StackTrace.current);
      if (result is Success) {
        emit(ForgetPasswordSuccess());
      } else if (result is Failure) {
        logger.e("Error log", error: result.toString());
        emit(ForgetPasswordFailure(result.toString()));
      }

  }



}
