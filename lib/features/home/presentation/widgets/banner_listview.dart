import 'package:fitness_app/Features/Home/cubits/home_data_cubit.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/Constants.dart';

class BannerListView extends StatefulWidget {
  const BannerListView({super.key});

  @override
  State<BannerListView> createState() => _BannerListViewState();
}

class _BannerListViewState extends State<BannerListView> {
  @override
  void initState() {
    context.read<HomeDataCubit>().getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .sizeOf(context)
          .height * .25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: BlocBuilder<HomeDataCubit,HomeDataState>(
          builder: (context, state) {
            if(state is HomeDataFailure){
              return Text(state.errorMessage);
            }
            else if(state is HomeDataSuccess){
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child:BannerCard(
                        title:state.homeDataModel.data!.sliders![index].name??'',
                        image: state.homeDataModel.data!.sliders![index].media!.url??'',
                      )
                    );
                  },
                  itemCount: 3
              );
            }
            else{
              return Center(child: CircularProgressIndicator(color: kPrimaryColor,),);
            }
          },
        ),
      ),
    );
  }
}
