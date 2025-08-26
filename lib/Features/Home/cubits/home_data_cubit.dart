import 'package:bloc/bloc.dart';
import 'package:fitness_app/core/Services/Home_Data_Service.dart';
import 'package:meta/meta.dart';

import '../models/Home_Data_Model.dart';

part 'home_data_state.dart';

class HomeDataCubit extends Cubit<HomeDataState> {
  HomeDataCubit() : super(HomeDataInitial());

  Future<void>getHomeData()async{
    HomeDataService homeDataService=HomeDataService();
    emit(HomeDataLoading());
    var data=await homeDataService.getHomeData();
    data.fold((failure){
      emit(HomeDataFailure(failure.errMessage));
    },(success){
      emit(HomeDataSuccess(success));
    });
  }
}
