import 'package:flutter/material.dart';


class ProfileContainer extends StatelessWidget {
  final String profileImage;
  final double width;
  final double height;
  const ProfileContainer({Key? key,required this.profileImage, this.width=60, this.height =60}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(profileImage)
            )
        ),
      );
  }
}
