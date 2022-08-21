import 'package:flutter/material.dart';
import 'package:nencia/screens/auth/login_page.dart';
import 'package:nencia/screens/auth/register_page.dart';


class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool showSignIn = true;

  void toggleView() => setState(()=>showSignIn = !showSignIn);
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return NLoginPage(toggleView: toggleView,);
    } else{
      return NRegisterationPage(toggleView: toggleView,);
    }
  }
}
