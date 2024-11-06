import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:manasa/core/helper/firebase_result.dart';
import 'package:manasa/core/utils/constants.dart';
import 'package:manasa/core/utils/constants_firestore_collection.dart';

import '../model/signup_request.dart';

class SignupRepository {


  FirebaseResult<String> createAccount({required SignupRequest  request })
  {
    try{
       firebaseAuth.createUserWithEmailAndPassword(email: request.email!, password: request.password!);
       saveUserData(request: request);
      return FirebaseResult.success("User created successfully");
    }catch (error, stackTrace) {
      // Report error to Crashlytics
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
      // Handle error here
      debugPrint('show error here : ${error.toString()}');
      return FirebaseResult.failure(error.toString());
    }
  }

  // save data user in firebase
  Future<FirebaseResult<String>> saveUserData({required SignupRequest  request }) async {
    try {

      var signupRequest = request.copyWith(id: firebaseAuth.currentUser!.uid, password: '');
     await  firestore.collection(user).doc(signupRequest.id).set(signupRequest.toMap());
      return FirebaseResult.success("User data saved successfully");
    } on FirebaseAuthException catch (error,stackTrace) {
      // Report error to Crashlytics
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
      // Handle error here
      debugPrint('show error here : ${error.toString()}');
      return FirebaseResult.failure(error.toString());
    }
  }

User? get  getUser => firebaseAuth.currentUser;
}