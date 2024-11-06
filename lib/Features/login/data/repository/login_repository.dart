
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:manasa/Features/sign-up/data/model/signup_request.dart';

import '../../../../core/helper/firebase_result.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/constants_firestore_collection.dart';
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

//   build social media login google
  Future<FirebaseResult<User>?> loginWithGoogle() async {
    try {
      // Trigger Google Sign-In
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return  null ; // User canceled the sign-in
      }

      // Obtain Google auth details
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // Sign in with the credential from the Google user
      final UserCredential userCredential =  await firebaseAuth.signInWithCredential(credential);
      final User? userAuth = userCredential.user;
      logger.i("User signed in with Google: ${userAuth?.email}");

      if (userAuth != null) {
        // Check if the user already exists in Firestore
        final userDoc = await firestore.collection(user).doc(userAuth.uid).get();
        logger.i(
          "User exists in Firestore: ${userDoc.exists}",
        );
        if (!userDoc.exists) {
          // User doesn't exist, create a new account in Firestore
          var request = SignupRequest(email: userAuth.email,Name: userAuth.displayName,id: userAuth.uid,);
          await  firestore.collection(user).doc(userAuth.uid).set(request.toMap());
          logger.i( "New user account created! User ID: ${userAuth.uid}" );
        } else {
          // User already exists, sign in
          logger.i("User already exists, signing in.");
        }
      }
      return FirebaseResult.success(userAuth!);
    } on FirebaseAuthException catch (error, stackTrace) {
      // logger
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
      logger.e("Error signing in with Google: $error");
      return FirebaseResult.failure(error as User);
    }
  }

  User? get  getUser => firebaseAuth.currentUser;






}