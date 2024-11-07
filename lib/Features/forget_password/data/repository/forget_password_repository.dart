
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import '../../../../core/helper/firebase_result.dart';
import '../../../../core/utils/constants.dart';

class ForgetPasswordRepository
{
//    get forget password by email
  Future<FirebaseResult<String>> forgotPassword({required String email}) async {
    try {
      logger.i("Forgot password clicked", stackTrace: StackTrace.current);
         await firebaseAuth.sendPasswordResetEmail(email: email);
      //    logger
      logger.i("Forgot password email sent", stackTrace: StackTrace.current);
      return FirebaseResult.success( "Password reset email sent");
    } on FirebaseAuthException catch (error, stackTrace) {
      logger.e("Error sending password reset email: $error", stackTrace: stackTrace);
      FirebaseCrashlytics.instance.recordError(error, stackTrace);

      return FirebaseResult.failure(error.toString());
    }
  }

}