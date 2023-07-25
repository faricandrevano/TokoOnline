import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shamo_mobile/core/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<CheckAuthEvent>(
      (event, emit) {
        emit(state.copyWith(status: AuthStateStatus.success));
      },
      transformer: debounce(const Duration(seconds: 3)),
    );
  }
}
