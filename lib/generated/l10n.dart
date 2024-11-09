// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `New Account`
  String get titleSignup {
    return Intl.message(
      'New Account',
      name: 'titleSignup',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get loginTitle {
    return Intl.message(
      'Log In',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Log in to view the latest offers`
  String get loginSubTitle {
    return Intl.message(
      'Log in to view the latest offers',
      name: 'loginSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get name {
    return Intl.message(
      'Full Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get donNotHave {
    return Intl.message(
      'Don\'t have an account?',
      name: 'donNotHave',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create a New Account`
  String get registerNow {
    return Intl.message(
      'Create a New Account',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// ` Signup successful !`
  String get registerSuccessful {
    return Intl.message(
      ' Signup successful !',
      name: 'registerSuccessful',
      desc: '',
      args: [],
    );
  }

  /// ` Signup Failure!`
  String get registerFailure {
    return Intl.message(
      ' Signup Failure!',
      name: 'registerFailure',
      desc: '',
      args: [],
    );
  }

  /// ` Login successful !`
  String get loginSuccessful {
    return Intl.message(
      ' Login successful !',
      name: 'loginSuccessful',
      desc: '',
      args: [],
    );
  }

  /// ` Login Failure !`
  String get loginFailure {
    return Intl.message(
      ' Login Failure !',
      name: 'loginFailure',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password_2 {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password_2',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password_3 {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password_3',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, just enter your email address and we'll send you a new password`
  String get forgot_password_title {
    return Intl.message(
      'Don\'t worry, just enter your email address and we\'ll send you a new password',
      name: 'forgot_password_title',
      desc: '',
      args: [],
    );
  }

  /// ` The email has been sent successfully. `
  String get resent_password_successful {
    return Intl.message(
      ' The email has been sent successfully. ',
      name: 'resent_password_successful',
      desc: '',
      args: [],
    );
  }

  /// ` An error occurred while sending the email. Please try again. `
  String get resent_password_failure {
    return Intl.message(
      ' An error occurred while sending the email. Please try again. ',
      name: 'resent_password_failure',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get create_account {
    return Intl.message(
      'Create an Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get sign_in_with_apple {
    return Intl.message(
      'Sign in with Apple',
      name: 'sign_in_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Salla`
  String get salla {
    return Intl.message(
      'Salla',
      name: 'salla',
      desc: '',
      args: [],
    );
  }

  /// `Search for a product`
  String get search {
    return Intl.message(
      'Search for a product',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Riyal`
  String get currency {
    return Intl.message(
      'Riyal',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Explore Categories`
  String get browse {
    return Intl.message(
      'Explore Categories',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `New Arrivals`
  String get new_arrivals {
    return Intl.message(
      'New Arrivals',
      name: 'new_arrivals',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see {
    return Intl.message(
      'See All',
      name: 'see',
      desc: '',
      args: [],
    );
  }

  /// `Welcome! ..`
  String get start_message_home {
    return Intl.message(
      'Welcome! ..',
      name: 'start_message_home',
      desc: '',
      args: [],
    );
  }

  /// `What would you like to learn?`
  String get subtitle_message_home {
    return Intl.message(
      'What would you like to learn?',
      name: 'subtitle_message_home',
      desc: '',
      args: [],
    );
  }

  /// `Search for Courses`
  String get search_courses {
    return Intl.message(
      'Search for Courses',
      name: 'search_courses',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
