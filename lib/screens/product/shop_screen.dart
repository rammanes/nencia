import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_constants.dart';
import 'package:nencia/constants/size_config.dart';
import 'package:nencia/screens/cart/items_cart.dart';
import 'package:nencia/screens/home/designer_home/review_page.dart';
import 'package:nencia/screens/home/model/shop_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/app_color.dart';
import 'customise_product.dart';
import 'product_widget/size_container.dart';

class ShopDetailsPage extends StatefulWidget {
  final DetailsItems shopDetailsItems;

  const ShopDetailsPage({Key? key, required this.shopDetailsItems})
      : super(key: key);

  @override
  State<ShopDetailsPage> createState() => _ShopDetailsPageState();
}

class _ShopDetailsPageState extends State<ShopDetailsPage> {
  final topBar = AppBar(
    backgroundColor: AppConstants.appWhite,
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: AppConstants.appPrimaryColor,
        )),
    title: const SizedBox(
      height: 35.0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "",
          style: TextStyle(
              color: AppConstants.appPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Row(
          children: const [
            Icon(
              Icons.search,
              color: AppConstants.appPrimaryColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.shopping_cart,
              color: AppConstants.appPrimaryColor,
            )
          ],
        ),
      )
    ],
  );
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appWhite,
      appBar: topBar,
      body: ListView(
        children: [
          // 1st row
          Container(
            height: SizeConfig.defaultSize! * 38,
            width: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    height: SizeConfig.defaultSize! * 38,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.shopDetailsItems.imageUrl),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: Container(
                        height: SizeConfig.defaultSize! * 6,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 24,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white.withOpacity(0.2)),
                              alignment: Alignment.center,
                              child: Text("1/7"),
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white.withOpacity(0.2)),
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Icon(
                                    widget.shopDetailsItems.favouriteIcon,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(widget.shopDetailsItems.likeCount
                                      .toString()),
                                ],
                              ),
                            ),
                          ],
                        )))
              ],
            ),
          ),
          //2nd Row
          Container(
            padding: const EdgeInsets.all(16),
            height: SizeConfig.defaultSize! * 12,
            width: MediaQuery.of(context).size.width,
            color: AppConstants.appWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Size",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    InkWell(

                      child: Text(
                        "See chart",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppConstants.appPrimaryColor),
                      ),
                    ),
                  ],
                ),
               // List.generate(5, (index) => SizeContainer(productSize: "S"))
                Row(
                  children: const [
                    SizeContainer(productSize: 'S',),
                    SizeContainer(productSize: 'M',),
                    SizeContainer(productSize: 'L',),
                    SizeContainer(productSize: 'XL',),
                    SizeContainer(productSize: 'XXL',),
                  ],
                )
              ],
            ),
          ),
          //3rd Row
          Container(
            padding: const EdgeInsets.all(16),
            height: SizeConfig.defaultSize! * 22,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: const [
                    Text(
                      "NGN 1,172.79",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                const Text(
                  "Higly customised agbada from the heart of katsina designed to suit your athestic needs",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 0.6,
                  ),
                ),
                const SizedBox(height: 8,),
                AppLargeText(text: "Delivery date"),
                const SizedBox(height: 8,),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                Row(
                  children: [
                    for (int index = 0; index < 5; index++)
                      const Icon(
                        Icons.star,
                        size: 12,
                      ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "4.8   100 orders",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          //Customise section
          InkWell(
            onTap: (){
              Get.to(()=> CustomiseProductScreen());
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              height: SizeConfig.defaultSize! * 6,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Customise Order",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          //reviews section
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: SizeConfig.defaultSize! * 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Reviews (20)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    Row(
                      children: [
                        for (int index = 0; index < 5; index++)
                          const Icon(
                            Icons.star,
                            size: 12,
                          ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>ReviewPage());
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                for(int index =0; index < 2; index++)
                  reviewContainer(),

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: AppConstants.appWhite,
        height: 80,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 260,
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          gradient: LinearGradient(
                              tileMode: TileMode.clamp,
                              colors: [
                                Colors.yellowAccent,
                                Colors.deepOrangeAccent
                              ])),
                      alignment: Alignment.center,
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppConstants.appWhite),
                      ),
                    ),
                    onTap: () {
                      // Get.to(CartScreen())
                    },
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.25,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            tileMode: TileMode.clamp,
                            colors: [Colors.orange, Colors.deepOrangeAccent])),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppConstants.appWhite),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
  Widget reviewContainer(){
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    children: [
                      Text("Kufre"),
                      Row(
                        children: const [
                          Icon(Icons.location_on, size: 10,),
                          Text("Abuja")
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text("Wednesday 7th, 2022")
            ],
          ),
          const SizedBox(height: 10,),
          const Text(
            "Higly customised agbada from the heart of katsina designed to suit your athestic needs",
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 0.6,
            ),
          )
        ],
      ),
    );
  }
  
}
