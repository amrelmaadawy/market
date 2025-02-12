part of 'loginstate_cubit.dart';

abstract class LoginstateState {}

class LoginstateInitial extends LoginstateState {}

class LoginstateLoading extends LoginstateState {}
class LoginstateSuccesses extends LoginstateState {}
class LoginstateErorr extends LoginstateState {
  final String message;
  LoginstateErorr(this.message);
}

class IsvisibleState extends LoginstateState {}

class SignUpstateLoading extends LoginstateState {}
class SignUpstateSuccesses extends LoginstateState {}
class SignUpstateErorr extends LoginstateState {
  final String message;
  SignUpstateErorr(this.message);
}


