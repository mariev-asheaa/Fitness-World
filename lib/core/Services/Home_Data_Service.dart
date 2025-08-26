import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_app/Features/Home/models/Home_Data_Model.dart';

import '../Helper/errors.dart';

class HomeDataService{
Dio dio =Dio();
String baseURL='https://staging.fitexpert.team';

Future<Either<Failure, HomeDataModel>>getHomeData()async{

  Map<String,String>headers=
  {
     "responsetype": "ResponseType.json",
      "content-type": "application/json",
      "x-tenant": "sst",
      "accept-language": "en"
      };
  try{
    var response=await dio.get('$baseURL/app/data/screens/home',
        options: Options(
      headers: headers
    ));
    print('data  ${response.data}');
    return right(HomeDataModel.fromJson(response.data));
  }
  on DioException catch(e){
    print('Dio Error: ${e.message}');
   return left(ServerFailure(e.message ?? 'Unknown error'));
  }
}

}

