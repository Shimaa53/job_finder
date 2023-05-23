part of 'job_login_cubit.dart';

@immutable
abstract class JobLoginState {}

class JobLoginInitial extends JobLoginState {}
class JobLoginLoading extends JobLoginState {}
class JobLoginSuccess extends JobLoginState {}
class JobLoginError extends JobLoginState {
  final String error;
  JobLoginError(this.error);
}
