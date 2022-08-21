import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/screens/auth/login_page.dart';
import 'package:nencia/screens/auth/register_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkThroughPage extends StatefulWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  State<WalkThroughPage> createState() => _WalkThroughPageState();
}

class _WalkThroughPageState extends State<WalkThroughPage> {

  final controller = PageController();
  int counter = 0;

  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (i){
              counter = i;
              setState((){});
            },
            children: [
              buildPage(
                color: Colors.white, 
                urlImage: "img/img1.jpg", 
                title: 'Africa Finest', 
                subtitle: "We are in the business of doing all it takes to take the African fashion to the next level"
              ),
              buildPage(
                  color: Colors.white,
                  urlImage: "img/img2.jpg",
                  title: 'Top Notch',
                  subtitle: "We are in the business of doing all it takes to take the African fashion to the next level"
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //TextButton(onPressed: ()=> Get.to(NRegisterationPage()), child: Text("SKIP")),
            Center(child: SmoothPageIndicator(
              controller: controller,
              count: 2,
              onDotClicked: (index)=> controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
              effect: const WormEffect(
                spacing: 16,
                dotColor: Colors.amberAccent,
                activeDotColor: Colors.amber,
              ),
            ),),
            TextButton(onPressed: () => controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOut), child: Text("NEXT")),
          ],
        ),
      ),
    );
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  })=>Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(urlImage), fit: BoxFit.cover
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50,),
        Text(title,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold, color: Colors.white
        ),),
        const SizedBox(height: 30,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Text(
            subtitle,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        )
      ],
    ),
  );
}
