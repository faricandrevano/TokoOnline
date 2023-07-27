import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/auth/auth.dart';
import 'package:shamo_mobile/features/settings/settings.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.changePasswordUseCase,
    required this.getProfileUseCase,
    required this.loginUseCase,
    required this.logoutUseCase,
    required this.registerUseCase,
    required this.updateProfileUseCase,
  }) : super(AuthState.initial()) {
    on<GetProfileEvent>(
      (event, emit) async {
        try {
          final usecase = await getProfileUseCase(const NoParams());
          usecase.fold(
            (l) {
              emit(state.copyWith(
                failure: l,
                status: AuthStateStatus.unAuthorized,
              ));
            },
            (r) {
              emit(state.copyWith(
                user: r,
                status: AuthStateStatus.authorized,
              ));
            },
          );
        } catch (exception, stackTrace) {
          exception.recordError(
            RecordErrorParams(exception: exception, stackTrace: stackTrace),
          );
        }
      },
      transformer: debounce(const Duration(seconds: 1)),
    );
  }

  final GetProfileUseCase getProfileUseCase;
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;
  final ChangePasswordUseCase changePasswordUseCase;
  final UpdateProfileUseCase updateProfileUseCase;
}
