
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import '../../../../core/helper/firebase_result.dart';
import '../../../../core/utils/constants.dart';
import '../model/login_request.dart';

class LoginRepository{
  Future<FirebaseResult<String>> login({required LoginRequest request})
  async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(email: request.email!, password: request.password!);
      return FirebaseResult.success("User logged in successfully");
      } on FirebaseAuthException catch (error,stackTrace) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
      return FirebaseResult.failure(error.message.toString());
    }
  }
}