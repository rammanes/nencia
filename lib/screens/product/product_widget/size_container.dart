import 'package:flutter/material.dart';



class SizeContainer extends StatelessWidget {
  final String productSize;
  const SizeContainer({Key? key, required this.productSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 10),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 0.8, color: Colors.black54),
        ),
        alignment: Alignment.center,
        child: Text(productSize,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
