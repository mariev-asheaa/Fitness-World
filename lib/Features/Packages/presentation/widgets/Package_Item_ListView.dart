import 'package:fitness_app/Features/Packages/models/Package_Item_Model.dart';
import 'package:fitness_app/Features/Packages/presentation/views/Package_Details_View.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/Package_Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageItemListview extends StatefulWidget {
  const PackageItemListview({super.key});

  @override
  State<PackageItemListview> createState() => _PackageItemListviewState();
}

class _PackageItemListviewState extends State<PackageItemListview> {
  List<PackageItemModel>packageItemList=[
    PackageItemModel(name: '90-days transformation', price: '1499', offer: '4000', duration: '3 months gold'),
    PackageItemModel(name: 'Golden six months', price: '1499', offer: '7000', duration: '6 months gold'),
    PackageItemModel(name: 'Lifestyle Package', price: '4400', offer: '10000', duration: '1 year gold'),
    PackageItemModel(name: 'High-Performance Elite', price: '40000', offer: '77000', duration: '3 months'),
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 338,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
        return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PackageDetailsView();
                },
              ));
              setState(() {
                selectedIndex = index;
              });
            },
            child: PackageItem(isActive: selectedIndex == index, packageItemModel: packageItemList[index],));
      } ,
          separatorBuilder:  (context, index) => const SizedBox(height: 10),
          itemCount: 4
      ),
    );
  }
}
