part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetDataLoadingState extends HomeState {}

class GetDataSuccesseState extends HomeState {}

class GetDataErrorState extends HomeState {
  final String massage;
  GetDataErrorState(this.massage);
}
