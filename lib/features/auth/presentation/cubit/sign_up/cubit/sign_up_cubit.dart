import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/features/auth/data/repositories/firebase_services.dart';
part 'sign_up_state.dart';


class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.firebaseServise}) : super(SignUpInitial());

  Future<void> signUp({required String email, required String password})async{
    emit(SignUpLoading());
    try {
      final UserCredential user = await firebaseServise.makeSignUp(email: email, password: password);
      emit(SignUpSuccess(user: user));
    } catch (e) {
      emit(SignUpError(error: e.toString()));
    }
  }

  final FirebaseServise firebaseServise;
}
