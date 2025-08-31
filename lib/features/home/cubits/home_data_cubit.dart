import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/Services/home_data_service.dart';
import '../models/home_data_model.dart';

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
      emit(HomeDataSuccess(success as HomeDataModel));
    });
  }
}
