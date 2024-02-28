part of 'reset_pass_cubit.dart';


sealed class ResetPassState {}

final class ResetPassInitial extends ResetPassState {}

final class ResetPassLoading extends ResetPassState {}

final class ResetPassSuccess extends ResetPassState {}

final class ResetPassError extends ResetPassState {
  final String error;
  ResetPassError({required this.error});
}
