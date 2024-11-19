import 'package:auth/module.dart';
import 'package:commons/modules.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService userService;
  UserBloc(this.userService) : super(const UserState.initial()) {
    on<ReadUserCollection>((event, emit) async {
      try {
        emit(const UserState.loadingStarted());
        final uid = await SecureStorageService().read(SecureStorageKeys.uid);
        final UserModel? userModel = await userService.getUser(uid ?? '');
        if (userModel != null) {
          emit(UserState.loadedSuccess(userModel));
        } else {
          emit(const UserState.loadedFailed('User not found'));
        }
      } catch (e) {
        emit(UserState.loadedFailed(e.toString()));
      }
    });
  }
}
