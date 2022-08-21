import 'package:flutter/material.dart';
import 'package:nencia/widgets/reusable_textform_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Settings", style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Business Setting Tile
              ExpansionTile(
                  title: Text("Business details"),
                children: [
                  businessDetailsForm()
                ],
              ),
              //Bank Details Tile
              ExpansionTile(
                title: Text("Bank details"),
                children: [
                  bankDetailsForm()
                ],
              ),
              //Business Policy Tile
              ExpansionTile(
                title: Text("Business Policy"),
                children: [
                  businessPolicyForm()
                ],
              ),
              const SizedBox(height: 20,
              ),
              Text("Profile"),
              const SizedBox(height: 10,),
              Text("Shipping Address"),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Contact US"),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget  businessDetailsForm(){
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          ReUsableTextFormWidget(controller: controller, text: "Business name"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Business location"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Phone number"),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){
            String controllerInput = controller.text.trim();
            print(controllerInput);
          }, child: Text("Submit"))
        ],
      ),

    );
  }
  Widget  bankDetailsForm(){
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          ReUsableTextFormWidget(controller: controller, text: "Bank name"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Account number"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Full name"),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){
            String controllerInput = controller.text.trim();
            print(controllerInput);
          }, child: Text("Submit"))
        ],
      ),

    );
  }
  Widget  businessPolicyForm(){
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          // use text area instead
          ReUsableTextFormWidget(controller: controller, text: "Reform Policy"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Dress Adjustment Policy"),
          const SizedBox(height: 10,),
          ReUsableTextFormWidget(controller: controller, text: "Validity period"),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){
            String controllerInput = controller.text.trim();
            print(controllerInput);
          }, child: Text("Submit"))
        ],
      ),

    );
  }
}
