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
              ],
            )
          ],
        ),
      )
    );
  }
}
