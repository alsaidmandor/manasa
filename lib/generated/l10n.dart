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

  /// `Title 22`
  String get title2 {
    return Intl.message(
      'Title 22',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Title 33`
  String get title3 {
    return Intl.message(
      'Title 33',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `Content 11`
  String get body1 {
    return Intl.message(
      'Content 11',
      name: 'body1',
      desc: '',
      args: [],
    );
  }

  /// `Content 22`
  String get body2 {
    return Intl.message(
      'Content 22',
      name: 'body2',
      desc: '',
      args: [],
    );
  }

  /// `Content 33`
  String get body3 {
    return Intl.message(
      'Content 33',
      name: 'body3',
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
