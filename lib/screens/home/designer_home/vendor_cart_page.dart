import 'package:flutter/material.dart';


class VendorCartScreen extends StatefulWidget {
  const VendorCartScreen({Key? key}) : super(key: key);

  @override
  State<VendorCartScreen> createState() => _VendorCartScreenState();
}

class _VendorCartScreenState extends State<VendorCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Vendor cart", style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: Center(
        child: Text("here"),
      ),
    );
  }
}
