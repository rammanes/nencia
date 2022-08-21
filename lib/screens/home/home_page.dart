import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/screens/cart/items_cart.dart';
import 'package:nencia/screens/settings/settings_page.dart';

import 'home_widget/home_body.dart';


class NenciaHome extends StatefulWidget {
  const NenciaHome({Key? key}) : super(key: key);

  @override
  State<NenciaHome> createState() => _NenciaHomeState();
}

class _NenciaHomeState extends State<NenciaHome>{

  final topBar = AppBar(
    backgroundColor: AppConstants.appWhite,
    centerTitle: true,
    elevation: 0,
    leading: const Icon(Icons.menu_rounded, color: AppConstants.appPrimaryColor,),
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
          children: const [
            Icon(Icons.search, color: AppConstants.appPrimaryColor,),
            SizedBox(width: 5,),
            Icon(Icons.notifications, color: AppConstants.appPrimaryColor,)
          ],
        ),
      )
    ],
  );
  final bottomBar =Container(
    color: AppConstants.appWhite,
    height: 50,
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: (){
              Get.to(()=>NenciaHome());
            },
            icon: const Icon(Icons.home_filled, color: AppConstants.appPrimaryColor,)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search_rounded, color: AppConstants.appPrimaryColor,)
        ),
        IconButton(
            onPressed: (){
              var cartItem;
              Get.to(()=>CartScreen());
            },
            icon: const Icon(Icons.shopping_bag, color: AppConstants.appPrimaryColor,)

        ),
        IconButton(
            onPressed: (){
              Get.to(()=> SettingsScreen());
            },
            icon: const Icon(Icons.person, color: AppConstants.appPrimaryColor,)
        )
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appWhite,
      appBar: topBar,
      body: HomeBody(),
      bottomNavigationBar: bottomBar
    );
  }
}
