import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:manasa/Features/sign-up/data/model/signup_request.dart';
import 'package:manasa/Features/sign-up/data/repo/signup_repository.dart';
import 'package:meta/meta.dart';

import '../../../../core/helper/firebase_result.dart';

import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/utils/constants.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepository repository;

  SignupCubit(this.repository) : super(SignupInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> createAccount() async {

    emit(SignupLoading());
    SignupRequest signup = SignupRequest(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      imageUrl: defaultImageUrl,
      enrolledCourses: [],
    );
    logger.d("signup request: $signup", stackTrace: StackTrace.current);
    FirebaseResult<User>? result=await  repository.createAccount( request: signup);
    logger.i("signup request: $signup", stackTrace: StackTrace.current);

    checkSignupResultSuccessOrFailure(result!);

  }
  void checkSignupResultSuccessOrFailure( FirebaseResult result ){
    if(result is Success<User>)
    {
      emit(SignupSuccess(result.toString()));
      saveUserUid(result.result.uid);
      logger.i("Success log", stackTrace: StackTrace.fromString( result.toString()));
    }else if(result is Failure<User>)
    {
      logger.e("Error log", error: result.toString());
      emit(SignupFailure(result.toString()));
    }
  }

  Future<void> saveUserUid(String uId) async {
    await SharedPrefHelper.setData(userUid, uId);
  }
}


