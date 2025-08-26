import 'package:fitness_app/Features/Home/models/Home_Data_Model.dart';
import 'package:fitness_app/core/utiles/Back_Icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/Helper/errors.dart';
import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';
import '../../../../generated/assets.dart';

class StoriesDetails extends StatelessWidget {
  const StoriesDetails({super.key,required this.successStories, });
  static const routeName = 'details';
  final  SuccessStories successStories;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              FutureBuilder<bool>(
                future: HandleImageError.isImageAvailable(
                  successStories.image??'',
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(color: kPrimaryColor),
                    );
                  }
                  if (snapshot.hasData && snapshot.data == true) {
                    return Image.network(
                        successStories.image??'',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height:MediaQuery.sizeOf(context).height*.6,
                        errorBuilder: (context, error, stackTrace) {
                          return  Image.asset(
                            Assets.imagesArticle,fit: BoxFit.cover,
                            width: double.infinity,
                            height:MediaQuery.sizeOf(context).height * .6,
                          );
                        }
                    );
                  } else {
                    return  Image.asset(Assets.imagesArticle, fit: BoxFit.cover,
                      width: double.infinity,
                      height:MediaQuery.sizeOf(context).height*.58,);
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: BackIcon()
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * .42,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: SingleChildScrollView(
                      child: SizedBox(
                       height:  MediaQuery.sizeOf(context).height * .9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                              leading: Image.asset(Assets.imagesEllipse,height: 40,),
                              title: Text(
                               successStories.clientName!,
                                style: Styles.styleW50017(context),
                              ),
                              subtitle: Text(
                                 successStories.subtitle ?? '',
                                style: Styles.styleW40012(context)
                                    .copyWith(color: const Color(0xFF7B6F72)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 43,bottom: 16),
                              child: Text(
                                '${successStories.clientName}’s Story with sst',
                                style: Styles.styleW70018(context),
                              ),
                            ),
                            Text(
                              successStories.content!,
                              style: Styles.styleW40012(context)
                                  .copyWith(color: const Color(0xFF7B6F72)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
