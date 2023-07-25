part of 'auth_bloc.dart';

enum AuthStateStatus { initial, loading, success, failure }

class AuthState extends Equatable {
  const AuthState({
    this.status = AuthStateStatus.initial,
  });

  factory AuthState.initial() {
    return const AuthState();
  }

  final AuthStateStatus status;

  AuthState copyWith({
    AuthStateStatus? status,
  }) {
    return AuthState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
