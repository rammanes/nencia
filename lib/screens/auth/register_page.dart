import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/constants/size_config.dart';
import 'package:nencia/screens/auth/login_page.dart';
import 'package:nencia/widgets/email_field_widget.dart';
import 'package:nencia/widgets/password_field_widget.dart';
import 'package:nencia/widgets/reusable_textform_widget.dart';

class NRegisterationPage extends StatefulWidget {
  final Function toggleView;
  const NRegisterationPage({Key? key, required this.toggleView}) : super(key: key);

  @override
  State<NRegisterationPage> createState() => _NRegisterationPageState();
}

class _NRegisterationPageState extends State<NRegisterationPage> {
  TextEditingController _fullNames = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _countryCode = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppConstants.appWhite,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: AppConstants.appPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 5,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize! * 3,
                        right: SizeConfig.defaultSize! * 3),
                    child: Form(
                      child: Container(
                        margin:
                        EdgeInsets.only(top: SizeConfig.defaultSize! * 20),
                        padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize! * 6,
                            bottom: SizeConfig.defaultSize! * 2,
                            left: SizeConfig.defaultSize! * 2,
                            right: SizeConfig.defaultSize! * 2),
                        height: SizeConfig.defaultSize! * 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            ReUsableTextFormWidget(controller: _fullNames, text: "Full names"),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),
                            EmailField(emailController: _email, text: "Email"),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),
                            Row(
                              children: [
                                const SizedBox(height: 10,),
                                Container( width: 80, child:  ReUsableTextFormWidget(controller: _countryCode, text: "+234")),
                                const SizedBox(width: 2,),
                                Expanded(child:  ReUsableTextFormWidget(controller: _phone, text: "Phone"),),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),
                            PasswordField(controller: _password, text: 'Password'),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),

                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),
                            ButtonTheme(
                              height: SizeConfig.defaultSize! * 5,
                              minWidth: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: AppConstants.appPrimaryColor,
                                hoverColor: AppConstants.appAlternativePrimary,
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Have an account? ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    widget.toggleView();
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: AppConstants.appPrimaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // SingleChildScrollView(
      //   padding: const EdgeInsets.all(16),
      //   child: Column(
      //     children: [
      //       const SizedBox(height: 40,),
      //       Image.asset('img/nencia_logo.png', height: 120, width: 120,),
      //       const SizedBox(height: 20,),
      //       const Text("Register in few steps",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(fontSize: 20,color: AppConstants.appPrimaryColor ,fontWeight: FontWeight.w500, ),),
      //       const SizedBox(height: 20,),
      //       ReUsableTextFormWidget(controller: _fullNames, text: "Full names"),
      //       const SizedBox(height: 10,),
      //       EmailField(emailController: _email, text: "Email"),
      //       const SizedBox(height: 10,),
      //       Row(
      //         children: [
      //           const SizedBox(height: 10,),
      //           Container( width: 80, child:  ReUsableTextFormWidget(controller: _countryCode, text: "+234")),
      //           const SizedBox(width: 2,),
      //           Expanded(child:  ReUsableTextFormWidget(controller: _phone, text: "Phone"),),
      //         ],
      //       ),
      //       const SizedBox(height: 10,),
      //       PasswordField(controller: _password, text: "Password"),
      //       const SizedBox(height: 10,),
      //       Row(
      //         children: [
      //           const Text("Accept terms and privacy policy", style: TextStyle(color: AppConstants.appPrimaryColor),),
      //           const SizedBox(width: 25,),
      //           Checkbox(
      //               side: const BorderSide(
      //                 color: Colors.black, //your desire colour here
      //                 width: 1.5,
      //               ),
      //               value: value, onChanged: (value)=> setState((){
      //             this.value = true;
      //           })),
      //         ],
      //       ),
      //       const SizedBox(height: 25,),
      //       ElevatedButton(onPressed: (){
      //         //_login(_userController);
      //         //Get.toNamed(RoutesClass.getHomeRoute());
      //       },
      //         style: ElevatedButton.styleFrom(
      //             primary: AppConstants.appPrimaryColor,
      //             elevation: 3,
      //             shape: const RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomRight: Radius.circular(5))
      //             )
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 60,
      //           padding: const EdgeInsets.all(20),
      //           child: const Text("Register", textAlign: TextAlign.center, style: TextStyle(
      //               fontSize: 16,
      //               fontWeight: FontWeight.bold
      //           ),),
      //         ),),
      //       TextButton(onPressed: (){
      //         //    Get.to(NLoginPage(), transition: Transition.fadeIn,duration: Duration(seconds: 1),);
      //       }, child: const Text("Already have an account? Sign in", textAlign: TextAlign.center , style: TextStyle(
      //           fontWeight: FontWeight.w300, fontSize: 16, color: AppConstants.appPrimaryColor
      //       ),))
      //     ],
      //   ),
      // ),
    );
  }
}
