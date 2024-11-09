import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasa/Features/sign-up/ui/logic/signup_cubit.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupFailure,
      builder: (context, state) {
        switch (state) {
          case SignupLoading _:
            return Center(child: CircularProgressIndicator());
          case SignupSuccess _:
            return Scaffold(
              body: Center(
                child: Text('Signup successful!'),
              ),
            );
          case SignupFailure _:
            return Scaffold(
              body: Center(
                child: Text('Signup failed: ${state.error}'),
              ),
            );
          default:
            return Container(); // Return empty widget when the state is not recognized.
        }
      },
    );
  }
}

