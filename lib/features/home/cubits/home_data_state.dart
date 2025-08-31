part of 'home_data_cubit.dart';

@immutable
sealed class HomeDataState {}

final class HomeDataInitial extends HomeDataState {}
final class HomeDataLoading extends HomeDataState{}

final class HomeDataSuccess extends HomeDataState{
  final HomeDataModel homeDataModel;
  HomeDataSuccess(this.homeDataModel);
}
final class HomeDataFailure extends HomeDataState{
  String errorMessage;
  HomeDataFailure(this.errorMessage);
}

