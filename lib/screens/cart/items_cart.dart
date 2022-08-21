import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';

import 'cart_widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  //CartItem cartItem;
  CartScreen({Key? key,}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final topBar = AppBar(
    backgroundColor: AppConstants.appWhite,
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.more_horiz, color: AppConstants.appPrimaryColor,)),
    title: const SizedBox(
      height: 35.0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Cart",
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
          children: const [
            Icon(Icons.search, color: AppConstants.appPrimaryColor,),
            SizedBox(width: 5,),
            Icon(Icons.shopping_cart, color: AppConstants.appPrimaryColor,)
          ],
        ),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: topBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                child: const Text(
                  "Order Details",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppConstants.appWhite),
                ),
              ),
              Container(
                height: 300,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.white),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Awaiting delivery", style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500
                          ),),
                          Text("Jul 14, 2022", style: TextStyle(
                              fontSize: 13,
                          ),)
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.house_outlined, size: 20,),
                          const SizedBox(width: 10,),
                          Text("AjumaFashionStore"),
                          const SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios, size: 10,)
                        ],
                      ),
                      const SizedBox(height: 5,),
                      const Divider(),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.deepOrange,
                              )
                            ],
                          ),
                          const SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("All in one set of men agbada, 2022", style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400
                              ),),
                              const SizedBox(height: 5,),
                              Text("Sky blue, 58, Nigeria", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300
                              ),),
                              const SizedBox(height: 5,),
                              Text("NGN 54,000.00", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300
                              ),),



                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 30,
                        width: double.infinity,
                        color: Colors.grey.withOpacity(0.1),
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: Text("Estimated delivery date: Aug 9, 2022"),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("NGN 58,386.00")
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           Container(
                             height: 44,
                             width: 120,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(22),
                               border: Border.all(color: Colors.black)
                             ),
                             child: Text("Track order"),
                           ),
                           const SizedBox(width: 10,),
                           Container(
                              height: 44,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(22),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Text("Confirm receipt",style: TextStyle(
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                )
              ),
              const SizedBox(height: 10,),
              Container(
                  height: 300,
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.white),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Awaiting delivery", style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500
                            ),),
                            Text("Jul 14, 2022", style: TextStyle(
                              fontSize: 13,
                            ),)
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(Icons.house_outlined, size: 20,),
                            const SizedBox(width: 10,),
                            Text("AjumaFashionStore"),
                            const SizedBox(width: 5,),
                            Icon(Icons.arrow_forward_ios, size: 10,)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Divider(),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.deepOrange,
                                )
                              ],
                            ),
                            const SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("All in one set of men agbada, 2022", style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400
                                ),),
                                const SizedBox(height: 5,),
                                Text("Sky blue, 58, Nigeria", style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300
                                ),),
                                const SizedBox(height: 5,),
                                Text("NGN 54,000.00", style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300
                                ),),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 30,
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.1),
                          padding: const EdgeInsets.only(left: 10),
                          alignment: Alignment.centerLeft,
                          child: Text("Estimated delivery date: Aug 9, 2022"),
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("NGN 58,386.00")
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 44,
                                width: 120,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Text("Track order"),
                              ),
                              const SizedBox(width: 10,),
                              Container(
                                height: 44,
                                width: 120,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(color: Colors.white)
                                ),
                                child: Text("Confirm receipt",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
