import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/screens/splash/splash_screen.dart';
import 'screens/walk_through.dart';
import 'helper/dependency.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // initialRoute: "/",
      // getPages: [
      //   GetPage(name: "/", page: ()=> WalkThroughPage() )
      // ],
    );
  }
}

