import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Helper/errors.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Back_Icon.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';
import '../../cubits/home_data_cubit.dart';
import 'articles_details.dart';


class SeeMoreArticles extends StatefulWidget {
  const SeeMoreArticles({super.key});

  @override
  State<SeeMoreArticles> createState() => _SeeMoreArticlesState();
}

class _SeeMoreArticlesState extends State<SeeMoreArticles> {
  @override
  void initState() {
    context.read<HomeDataCubit>().getHomeData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: BackIcon(),
            ),
            BlocBuilder<HomeDataCubit, HomeDataState>(
              builder: (context, state) {
                if(state is HomeDataFailure){
                  return Text(state.errorMessage);
                }
                if(state is HomeDataSuccess){
                  return Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height*.9,
                      child: ListView.builder(
                          itemCount: state.homeDataModel.data!.articles!.length,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 19),
                              child: ListTile(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return ArticelsDetails(articles:state.homeDataModel.data!.articles![index],);
                                        }));
                                  },
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
                                trailing:FutureBuilder<bool>(
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
                                            state.homeDataModel.data!.articles![index].image??'',
                                            fit: BoxFit.cover,
                                            width: 90,height: 80,
                                            errorBuilder: (context, error, stackTrace) {
                                              return  Image.asset(
                                                Assets.imagesArticle,fit: BoxFit.cover,
                                                width: 90,height: 80,
                                              );
                                            }
                                        ),
                                      );
                                    } else {
                                      return  ClipRRect(
                                          borderRadius: BorderRadius.circular(16),
                                          child: Image.asset(Assets.imagesArticle, fit: BoxFit.cover, width: 90,height: 80,)
                                      );
                                    }
                                  },
                                )
                              ),
                            );
                          }),
                    ),
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
