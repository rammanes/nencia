import 'package:flutter/material.dart';
import 'package:nencia/constants/size_config.dart';

import '../constants/app_color.dart';
import '../widgets/reusable_textform_widget.dart';


class CreateShopForm extends StatefulWidget {
  const CreateShopForm({Key? key}) : super(key: key);

  @override
  State<CreateShopForm> createState() => _CreateShopFormState();
}

class _CreateShopFormState extends State<CreateShopForm> {
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
            onPressed: (){},
            icon: const Icon(Icons.home_filled, color: AppConstants.appPrimaryColor,)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search_rounded, color: AppConstants.appPrimaryColor,)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_bag, color: AppConstants.appPrimaryColor,)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.person, color: AppConstants.appPrimaryColor,)
        )
      ],
    ),
  );

  TextEditingController title = TextEditingController();
  TextEditingController itemSize = TextEditingController();
  TextEditingController itemPrice= TextEditingController();
  TextEditingController itemStyle = TextEditingController();
  TextEditingController itemLocation = TextEditingController();
  TextEditingController itemImage = TextEditingController();
  TextEditingController itemDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: topBar,
      backgroundColor: AppConstants.appWhite,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Title : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: title, text: "Title")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Size : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemSize, text: "Size")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Price : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemPrice, text: "Price")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Style : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemStyle, text: "Style Type")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Location : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemLocation, text: "Location")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Image : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemImage, text: "Add Image")),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child:  Container(
                        child: const Text(
                          "Description : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppConstants.appPrimaryColor
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: ReUsableTextFormWidget(controller: itemDescription, text: "Description")),
                  ],
                ),
                SizedBox(height: SizeConfig.defaultSize! * 6,),
                ElevatedButton(onPressed: (){

                },
                  style: ElevatedButton.styleFrom(
                      primary: AppConstants.appPrimaryColor,
                      elevation: 3,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                      )
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.all(20),
                    child: const Text("Create", textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),),
              ]

            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
