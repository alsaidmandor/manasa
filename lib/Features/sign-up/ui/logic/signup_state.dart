part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}
final class SignupSuccess extends SignupState {
  final String success ;

  SignupSuccess(this.success);
}
final class SignupFailure extends SignupState {
  final String error;

  SignupFailure(this.error);
}

