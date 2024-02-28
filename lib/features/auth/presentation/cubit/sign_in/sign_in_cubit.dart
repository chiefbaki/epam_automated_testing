import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/auth/data/repositories/firebase_services.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_state.dart';


class SignInCubit extends Cubit<SignInState> {
  SignInCubit({required this.firebase}) : super(SignInInitial());

  Future<void> signIn({required String email, required String password}) async {
    emit(SignInLoading());
    try {
      final UserCredential user =
          await firebase.makeSignIn(email: email, password: password);
      emit(SignInSuccess(user: user));
    } catch (e) {
      emit(SignInError(error: e.toString()));
    }
  }

  final FirebaseServise firebase;
}
