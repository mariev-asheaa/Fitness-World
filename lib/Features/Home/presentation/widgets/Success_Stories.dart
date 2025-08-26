import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_app/Features/Home/cubits/home_data_cubit.dart';
import 'package:fitness_app/Features/Home/presentation/views/SeeMore_Stories_View.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Stories_Details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Sections_Header.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/SeeMore_Stories_Body.dart';
import 'package:fitness_app/core/utiles/App_Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/Helper/errors.dart';
import '../../../../core/utiles/Constants.dart';
import '../../../../generated/assets.dart';

class SuccessStories extends StatefulWidget {
  const SuccessStories({super.key});

  @override
  State<SuccessStories> createState() => _SuccessStoriesState();
}

class _SuccessStoriesState extends State<SuccessStories> {
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
          SectionsHeader(
            title: 'Success Stories',
            seeMore: 'See More',
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(SeemoreStoriesView.routeName);
            },
          ),

          BlocBuilder<HomeDataCubit, HomeDataState>(
            builder: (context, state) {
              if (state is HomeDataFailure) {
                return Text(state.errorMessage);
              }
              else if (state is HomeDataSuccess) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.55,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .7,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return StoriesDetails(
                                successStories: state.homeDataModel.data!.successStories![index],
                              );
                            },
                          ));
                        },
                        child: Column(
                          children: [
                            Container(
                          height: MediaQuery.sizeOf(context).height * .2,
                           width: MediaQuery.sizeOf(context).width * .32,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:FutureBuilder<bool>(
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
                                  state.homeDataModel.data!.successStories![index].image ?? '',
                                  fit: BoxFit.fill,
                                ),
                              );
                            } else {
                              return  ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(Assets.imagesArticle, fit: BoxFit.cover,)
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
                );
              } else {
                // Loading state while fetching home data
                return const Center(
                  child: CircularProgressIndicator(color: kPrimaryColor),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
