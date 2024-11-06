part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {}

final class LoginFailure extends LoginState {
  final String error;
  LoginFailure(this.error);
}
//  social media login google
final class LoginGoogleLoading extends LoginState {}

final class LoginGoogleSuccess extends LoginState {}

final class LoginGoogleFailure extends LoginState {
  final String error;
  LoginGoogleFailure(this.error);
}
