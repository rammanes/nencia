import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/widgets/reusable_textform_widget.dart';

import '../../widgets/general_submit.dart';


class CustomiseProductScreen extends StatefulWidget {
  @override
  State<CustomiseProductScreen> createState() => _CustomiseProductScreenState();
}

class _CustomiseProductScreenState extends State<CustomiseProductScreen> {
  final _shoulder = TextEditingController();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppConstants.appWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstants.appWhite,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: AppConstants.appPrimaryColor,)),
          bottom: const TabBar(
            labelColor: AppConstants.appPrimaryColor,
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: "Measurement",),
              Tab(text: "Upload Pictures",),
              Tab(text: "Select Material",)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Customise measurement
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Shoulder",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Chest")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Tummy",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Sleeve Length")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Top Length",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Burst")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Hip",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Hip Length")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "HW Hip Length",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Breast Point")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Off Shoulder",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Blouse Waist")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Blouse Length",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Gown Length")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Skirt Length",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Trouser Length")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Skirt Length",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Trouser Length")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Trouser Waist",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Arm Hold")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Lap",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Neck")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Wrist",)),
                      Container(
                          width: width * 0.4,
                          child: ReUsableTextFormWidget(controller: _shoulder, text: "Ankle")),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: SubmitButton(buttonText: "Save", onPressed: (){}, buttonColor: AppConstants.appPrimaryColor, size: 14,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: SubmitButton(buttonText: "Continue", buttonColor: AppConstants.appPrimaryColor,  onPressed: (){}, size: 14,),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            // Upload Pictures
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text("You will be required to upload two pictures for best experience"
                        ", use the ones you are dressed in fitted outfits like gym outfits"
                        ""),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Sample pictures for best experience"),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.drive_folder_upload, size: 80, color: Colors.deepPurpleAccent,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(Icons.drive_folder_upload, size: 40, color: Colors.deepPurpleAccent,),
                        const SizedBox(width: 10,),
                        TextButton(onPressed: (){}, child: Text("Front Picture"))
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(Icons.drive_folder_upload, size: 40, color: Colors.deepPurpleAccent,),
                        const SizedBox(width: 10,),
                        TextButton(onPressed: (){}, child: Text("Side Picture"))
                      ],
                    ),

                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: SubmitButton(buttonText: "Save", onPressed: (){}, size: 14, buttonColor: Colors.deepPurpleAccent,),
                    ),
                  )
                ],
              ),
            ),
            //Select Material
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => materialTile(),
              ),
            )
          ],
        )

      ),

    );
  }

  Widget materialTile() => SizedBox(
    height: 100,
    width: double.infinity,
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 0,
          right:0,
          bottom: 10,
          child: Container(
            width: double.infinity,
            color: Colors.deepPurpleAccent,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 120, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Item Name", style: TextStyle(color: Colors.white),),
                      Text("Item Description", style: TextStyle(color: Colors.white),),
                      Text("Item Amount", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Positioned(
          top: 5,
          left: 10,
          bottom: 5,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Card(
              elevation: 2,
              color: AppConstants.appWhite,
              child: Icon(Icons.image_outlined, color: Colors.deepPurpleAccent, size: 50,),
            ),
          ),
        )
      ],
    ),
  );
}
