part of 'sign_up_cubit.dart';

sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {
  final UserCredential user;
  SignUpSuccess({required this.user});
}

final class SignUpError extends SignUpState {
  final String error;
  SignUpError({required this.error});
}
