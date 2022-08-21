import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/size_config.dart';
import 'package:nencia/screens/home/designer_home/vendor_cart_page.dart';
import 'package:nencia/screens/home/home_widget/home_profile_container.dart';
import 'package:nencia/screens/home/model/shop_details.dart';
import 'package:nencia/screens/product/shop_screen.dart';

import '../../../constants/app_color.dart';
import '../model/ShopModel.dart';


class DesignerHome extends StatefulWidget {
  const DesignerHome({Key? key}) : super(key: key);

  @override
  State<DesignerHome> createState() => _DesignerHomeState();
}

class _DesignerHomeState extends State<DesignerHome> {

  final topBar = AppBar(
    backgroundColor: AppConstants.appWhite,
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.arrow_back, color: AppConstants.appPrimaryColor,)),
    title: const SizedBox(
      height: 35.0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Nencia",
          style: TextStyle(
              color: AppConstants.appPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
      ),
    ),
    actions: [
      Padding(
        padding:const EdgeInsets.only(right: 12.0),
        child: Row(
          children: [
            Icon(Icons.search, color: AppConstants.appPrimaryColor,),
            SizedBox(width: 5,),
            IconButton(
              onPressed: ()=> Get.to(()=>VendorCartScreen()),
              icon: Icon(Icons.shopping_cart, color: AppConstants.appPrimaryColor,))
          ],
        ),
      )
    ],
  );
  List<ShopModel> shopList = [];
  @override
  void initState(){
    shopList = getShopRecords();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topBar,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(6),
              height: SizeConfig.defaultSize! * 20,
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ProfileContainer(profileImage: "img/shop1.jpg"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Aj Stylist",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppConstants.appPrimaryColor
                                ),
                              ),
                              Text(
                                "Verified",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green
                                ),
                              ),
                              Text(
                                "Lokoja, Kogi State",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: 10,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue
                        ),
                        alignment: Alignment.center,
                        child: Text("Follow", style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ),),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Container(
                            child: Text(
                                "I specialise in all kinds of male and female materials our brands covers a wide range of varieties for your consumption"
                            ),
                          ))
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Text("88k Followers "),
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index)=>
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
                            child: InkWell(
                              onTap: (){
                                var shopDetailsItems =  DetailsItems(shopList[index].postCardImageUrl,
                                  shopList[index].shopName,
                                  shopList[index].likeIcon,
                                  shopList[index].viewCount,
                                );
                                Get.to(()=>ShopDetailsPage(shopDetailsItems: shopDetailsItems));
                              },
                              child: SizedBox(
                                  height: SizeConfig.defaultSize! * 48,
                                  child: Image.asset(shopList[index].postCardImageUrl, fit: BoxFit.cover,)),
                            ),
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
                        //5th row
                      ],
                    ),
                  ),
                  itemCount: shopList.length),
            )

          ],
        ),
      ),
    );
  }
}
