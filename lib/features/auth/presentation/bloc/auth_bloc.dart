import 'package:blog_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // can not access outside
  final UserSignUp _userSignUp;

  AuthBloc({
    required UserSignUp userSignUp,
  })  : _userSignUp = userSignUp,
        super(AuthInitial()) {
    on<AuthSignUp>((event, emit) async {
      final res = await _userSignUp(
        UserSignUpParams(
          name: event.name,
          email: event.email,
          password: event.password,
        ),
      );

      print("JAI_THAKAR:::: $res");

      res.fold(
        (l) {
          print("JAI_THAKAR::: Error message ${l.message}");
          emit(AuthFailure(l.message));
        },
        (r) {
          print("JAI_THAKAR::: Success $r");
          emit(AuthSuccess(r));
        },
      );
    });
  }
}
