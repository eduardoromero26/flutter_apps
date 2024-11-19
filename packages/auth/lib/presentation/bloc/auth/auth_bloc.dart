import 'package:auth/module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;
  AuthBloc(this.authService) : super(const AuthState.initial()) {
    on<LoginWithEmail>((event, emit) async {
      try {
        emit(const AuthState.loadingStarted());
        final uid =
            await authService.loginWithEmail(event.email, event.password);
        emit(AuthState.loadedSuccess(TokenModel(uid: uid.uid)));
      } catch (e) {
        emit(AuthState.loadedFailed(e.toString()));
        emit(const AuthState.initial());
      }
    });
    on<RestartLogin>((event, emit) {
      emit(const AuthState.initial());
    });
    on<ResetPasswordEvent>((event, emit) async {
      try {
        emit(const AuthState.loadingStarted());
        await authService.sendPasswordResetEmail(email: event.email);
      } catch (e) {
        emit(AuthState.loadedFailed(e.toString()));
        emit(const AuthState.initial());
      }
    });
  }
}
