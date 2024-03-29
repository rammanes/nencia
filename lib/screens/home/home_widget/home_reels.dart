import 'package:flutter/material.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/screens/home/home_widget/home_profile_container.dart';

class HomeReels extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Top Brands",
        style: TextStyle(
          color: AppConstants.appPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    ],
  );
  final stories = Expanded(
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Column(
          children: [
            const SizedBox(height: 10,),
            Stack(
              alignment: Alignment.bottomRight,
              children: const [
                ProfileContainer(profileImage: 'img/shop3.jpg'),
              ],
            ),
            const SizedBox(height: 5,),
            const Text(
              "Nencia",
               style: TextStyle(
                 color: AppConstants.appPrimaryColor,
                 fontSize: 12,
                 fontWeight: FontWeight.w400
               ),
            )
          ],
        )
    )
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories
        ],
      ),
    );
  }
}
