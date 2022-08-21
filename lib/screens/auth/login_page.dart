import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/constants/size_config.dart';
import 'package:nencia/screens/home/home_page.dart';
import 'package:nencia/widgets/email_field_widget.dart';
import 'package:nencia/widgets/password_field_widget.dart';

class NLoginPage extends StatefulWidget {
  final Function toggleView;
  const NLoginPage({Key? key, required this.toggleView}) : super(key: key);

  @override
  State<NLoginPage> createState() => _NLoginPageState();
}

class _NLoginPageState extends State<NLoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppConstants.appWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: AppConstants.appPrimaryColor
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 5,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 3, right:  SizeConfig.defaultSize! * 3  ),
                    child: Container(
                      margin: EdgeInsets.only(top:  SizeConfig.defaultSize! * 28),
                      padding: EdgeInsets.only(
                        top:  SizeConfig.defaultSize! * 6,
                        bottom:  SizeConfig.defaultSize! * 2,
                        left:  SizeConfig.defaultSize! * 2,
                        right:  SizeConfig.defaultSize! * 2
                      ),
                      height:  SizeConfig.defaultSize! * 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppConstants.appWhite
                      ),
                      child: Column(
                        children: [
                          EmailField(emailController: _username, text: "Username"),
                          SizedBox(
                            height:  SizeConfig.defaultSize! * 2,
                          ),
                          PasswordField(controller: _password, text: "Password"),
                          SizedBox(
                            height:  SizeConfig.defaultSize! * 2,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: (){},
                              child: const Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height:  SizeConfig.defaultSize! * 2,
                          ),
                          ElevatedButton(onPressed: (){
                            Get.to(()=>NenciaHome());
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
                                child: const Text("Login", textAlign: TextAlign.center, style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),),
                          SizedBox(
                            height:  SizeConfig.defaultSize! * 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  widget.toggleView();
                                },
                                child:  Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: AppConstants.appPrimaryColor,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: SizeConfig.defaultSize! * 26),
                    height: SizeConfig.defaultSize! * 5,
                    width: SizeConfig.defaultSize! * 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 6,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Nencia',
                        style: TextStyle(
                            color: AppConstants.appPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
      // SingleChildScrollView(
      //   padding: const EdgeInsets.all(16),
      //   child: Center(
      //     child: Column(
      //       children: [
      //         const SizedBox(height: 40,),
      //         Image.asset('img/nencia_logo.png', height: 120, width: 120,),
      //         const SizedBox(height: 20,),
      //         const Text("Hey There, Welcome to Nencia",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppConstants.appPrimaryColor),),
      //         const SizedBox(height: 20,),
      //         EmailField(emailController: _username, text: "Email",),
      //         const SizedBox(height: 20,),
      //         PasswordField(controller: _password, text: "Password",),
      //         const SizedBox(height: 25,),
      //         ElevatedButton(onPressed: (){
      //           //_login(_userController);
      //           Get.to(()=>PageNavigation());
      //         },
      //           style: ElevatedButton.styleFrom(
      //               primary: AppConstants.appPrimaryColor,
      //               elevation: 3,
      //               shape: const RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomRight: Radius.circular(5))
      //               )
      //           ),
      //           child: Container(
      //             width: double.infinity,
      //             height: 60,
      //             padding: const EdgeInsets.all(20),
      //             child: const Text("Login", textAlign: TextAlign.center, style: TextStyle(
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.bold
      //             ),),
      //           ),),
      //         const SizedBox(height: 10,),
      //         TextButton(onPressed: (){
      //           Get.to(NRegisterationPage(), transition: Transition.fadeIn, duration: Duration(seconds: 1), );
      //         }, child: const Text("Don't have an account? Register", textAlign: TextAlign.center , style: TextStyle(
      //             fontWeight: FontWeight.w300, fontSize: 16, color: AppConstants.appPrimaryColor
      //         ),))
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
