import 'package:fitness_app/core/utiles/Back_Icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/Helper/errors.dart';
import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';
import '../../../../generated/assets.dart';
import '../../cubits/home_data_cubit.dart';
import 'Stories_Details.dart';

class SeemoreStories extends StatefulWidget {
  const SeemoreStories({super.key});

  @override
  State<SeemoreStories> createState() => _SeemoreStoriesState();
}

class _SeemoreStoriesState extends State<SeemoreStories> {
  @override
  void initState() {
    context.read<HomeDataCubit>().getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: BackIcon(),
            ),
            BlocBuilder<HomeDataCubit, HomeDataState>(
              builder: (context, state) {
                if (state is HomeDataFailure) {
                  return Text(state.errorMessage);
                }
                else if (state is HomeDataSuccess) {
                  return Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      child: GridView.builder(
                        itemCount: state.homeDataModel.data!.successStories!.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: .6,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StoriesDetails(
                                    successStories: state.homeDataModel.data!.successStories![index],
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                             Container(
                            height: MediaQuery.sizeOf(context).height * .25,
                            width: MediaQuery.sizeOf(context).width * .4,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: FutureBuilder<bool>(
                              future: HandleImageError.isImageAvailable(
                                state.homeDataModel.data!.successStories![index].image ?? '',
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
                                        state.homeDataModel.data!.successStories![index].image??'',
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return  Image.asset(
                                            Assets.imagesArticle,fit: BoxFit.cover,
                                          );
                                        }
                                    ),
                                  );
                                } else {
                                  return  ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(Assets.imagesArticle, fit: BoxFit.cover)
                                  );
                                }
                              },
                            )
                          ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 19),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      state.homeDataModel.data!.successStories![index].clientName ?? '',
                                      style: Styles.styleW70018(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  );
                }
              },
            ),
          ],
        ),
      );
  }
}
