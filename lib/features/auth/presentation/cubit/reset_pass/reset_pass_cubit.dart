import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/features/auth/data/repositories/firebase_services.dart';

part 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit({required this.firebaseServise}) : super(ResetPassInitial());

  Future<void> reset({required String email}) async {
    emit(ResetPassLoading());
    try {
      firebaseServise.makeReset(email: email);
      emit(ResetPassSuccess());
    } catch (e) {
      emit(ResetPassError(error: e.toString()));
    }
  }

  final FirebaseServise firebaseServise;
}
