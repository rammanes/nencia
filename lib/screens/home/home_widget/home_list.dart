import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/screens/home/designer_home/designer_home.dart';
import 'package:nencia/screens/home/home_widget/home_profile_container.dart';
import 'package:nencia/screens/home/home_widget/home_reels.dart';
import 'package:nencia/screens/home/model/shop_details.dart';
import 'package:nencia/screens/product/shop_screen.dart';
import '../../../constants/size_config.dart';
import '../model/ShopModel.dart';

class HomeList extends StatefulWidget {


  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {

  List<ShopModel> shopList = [];
  @override
  void initState(){
    shopList = getShopRecords();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView.builder(
      itemBuilder: (context, index)=> index== 0 ?
      SizedBox(
        height: SizeConfig.defaultSize! * 18,
        child: HomeReels(),
      ):
      InkWell(
        onTap: (){
          var initialLiterals = shopList[index];
          //Get.to(()=> ShopDetailsPage(shopDetailsItems: DetailsItems(initialLiterals.postCardImageUrl, initialLiterals.shopName,initialLiterals.likeIcon,initialLiterals.viewCount, ),));
          Get.to(()=>DesignerHome());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ist row
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:[
                      ProfileContainer(profileImage:shopList[index].shopImageUrl, height: 40, width: 40,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shopList[index].shopName,
                            style: const TextStyle(
                                fontSize: 14,
                                color: AppConstants.appPrimaryColor
                            ),
                          ),
                          const Text(
                            "Verified",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.green
                            ),
                          ),
                          const Text(
                            "Lokoja, Kogi State",
                            style: TextStyle(
                                fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children:[
                      for(int index =0 ; index < 5; index ++)
                        const Icon(Icons.star, size: 12, color: Colors.yellow,),
                    ],
                  )

                ],
              ),
            ),
            // 2nd row
            Flexible(
              fit: FlexFit.loose,
              child: SizedBox(
                height: SizeConfig.defaultSize! * 48,
                child: Image.asset(shopList[index].postCardImageUrl, fit: BoxFit.cover,)),
            ),
            //3rd row
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(shopList[index].likeIcon, color: Colors.grey,),
                          const SizedBox(width: 5,),
                          Text(shopList[index].viewCount.toString(),
                            style:const TextStyle(
                              fontSize: 12,
                              color: AppConstants.appAlternativeSecondary
                            ) ,)
                        ],
                      ),
                      const SizedBox(width: 16,),
                      Row(
                        children: [
                          Icon(shopList[index].viewIcon, color: Colors.grey,),
                          const SizedBox(width: 5,),
                          Text(shopList[index].viewCount.toString(),
                            style:const TextStyle(
                                fontSize: 12,
                                color: AppConstants.appAlternativeSecondary
                            ) ,)
                        ],
                      ),
                      const SizedBox(width: 16,),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.more_vert_rounded, color: Colors.grey,),
                    ],
                  ),
                ],
              ),
            ),
            //4th row
            Padding(
              padding: const EdgeInsets.fromLTRB(16,5,16,5),
              child: Text("Liked by rammanes",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                )
              ),
            ),
            //5th row
            Padding(
              padding: const EdgeInsets.fromLTRB(16,5,16,5),
              child: Row(
                children: [
                 ProfileContainer(profileImage: shopList[index].shopImageUrl, height: 20, width: 20,),
                 const SizedBox(width: 10,),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...."
                    ),
                  ))

                ],
              ),
            )
          ],
        ),
      ),
      itemCount: shopList.length);
  }
}
