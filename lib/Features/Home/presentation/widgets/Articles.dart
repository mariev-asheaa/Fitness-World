import 'package:fitness_app/Features/Home/cubits/home_data_cubit.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Articels_Details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Sections_Header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Helper/errors.dart';
import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';
import '../../../../generated/assets.dart';
import '../views/SeeMore_Articles_View.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  void initState() {
    context.read<HomeDataCubit>().getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        children: [
          SectionsHeader(title: 'Articles', seeMore: "See More", onTap: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(SeemoreArticlesView.routeName);
          },),
          BlocBuilder<HomeDataCubit, HomeDataState>(
         builder: (context, state) {
           if(state is HomeDataFailure){
             return Text(state.errorMessage);
           }
           if(state is HomeDataSuccess){
             return SizedBox(
               height: MediaQuery.sizeOf(context).height*.6,
               child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 3,
                   itemBuilder: (context,index){
                     return Padding(
                       padding: const EdgeInsets.only(bottom: 19),
                       child: InkWell(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return ArticelsDetails(articles:state.homeDataModel.data!.articles![index],);
                               }));
                         },
                         child: ListTile(
                           contentPadding: EdgeInsets.zero,
                           minVerticalPadding: 0,
                           title: Text(
                             state.homeDataModel.data!.articles![index].content!,
                             overflow: TextOverflow.ellipsis,
                             maxLines: 2,
                             style: Styles.styleW70016(context)
                           ),
                           subtitle: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right:3),
                                 child: Image.asset(Assets.imagesUserImage,height: 24,),
                               ),
                               Text(
                                 'Hilda Friesen . ',
                                 style: Styles.styleW40016(context).copyWith(color:Color(0xFF6D6265))
                               ),
                               Flexible(
                                 child: Text(
                                     state.homeDataModel.data!.articles![index].date??'',
                                   style: Styles.styleW40012(context).copyWith(color: Color(0xFF6D6265),)
                                 ),
                               ),
                             ],
                           ),
                           trailing: FutureBuilder<bool>(
                             future: HandleImageError.isImageAvailable(
                               state.homeDataModel.data!.articles![index].image ?? '',
                             ),
                             builder: (context, snapshot) {
                               if (snapshot.connectionState == ConnectionState.waiting) {
                                 return SizedBox(
                                   width: 108,
                                   height: 80,
                                   child: Center(
                                     child: CircularProgressIndicator(color: kPrimaryColor),
                                   ),
                                 );
                               }
                               if (snapshot.hasData && snapshot.data == true) {
                                 return ClipRRect(
                                   borderRadius: BorderRadius.circular(16),
                                   child: Image.network(
                                     state.homeDataModel.data!.articles![index].image ?? '',
                                     fit: BoxFit.fill,
                                     width: 108,
                                     height: 80,
                                      ),
                                 );
                               } else {
                                 return  ClipRRect(
                                     borderRadius: BorderRadius.circular(16),
                                     child: Image.asset(Assets.imagesArticle, fit: BoxFit.cover, width: 108, height: 80)
                                 );
                             }
                             },
                           )
                         ),
                       ),
                     );
                   }),
             );
           }
           else{
             return Center(child: CircularProgressIndicator(color: kPrimaryColor,),);
           }
  },
)
        ],
      ),
    );
  }
}