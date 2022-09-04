import 'package:flutter/material.dart';
import 'package:nencia/constants/app_constants.dart';
import 'package:nencia/widgets/reusable_textform_widget.dart';

import '../../../constants/app_color.dart';
import '../../../constants/size_config.dart';


class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController controller = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Create Post", style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Add Image"),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Card(
                      elevation: 3,
                      color: AppConstants.appPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(Icons.add, size: 20, color: Colors.white,),
                            AppSmallText(text: "Add Image", textColor: Colors.white,),
                          ],
                        ),
                      ),
                    ))
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: "Description"),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextFormField(
                        minLines: 4,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                        ),
                      )
                  )
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Style Type"),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ReUsableTextFormWidget(controller: controller, text: "Style Type"))
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Ready Date"),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ReUsableTextFormWidget(controller: controller, text: "Ready Date"))
                ],
              ),
              SizedBox(
                height:  SizeConfig.defaultSize! * 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(onPressed: (){

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
                    child: const Text("Post", textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
