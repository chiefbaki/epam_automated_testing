import 'package:firebase_auth/firebase_auth.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final UserCredential user;
  SignInSuccess({required this.user});
}

class SignInError extends SignInState {
  final String error;
  SignInError({required this.error});
}
