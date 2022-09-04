import 'package:flutter/material.dart';
import 'package:nencia/constants/app_constants.dart';

import '../../../constants/app_color.dart';


class VendorCartScreen extends StatefulWidget {
  const VendorCartScreen({Key? key}) : super(key: key);

  @override
  State<VendorCartScreen> createState() => _VendorCartScreenState();
}

class _VendorCartScreenState extends State<VendorCartScreen> {
  bool isReady = true;
  void toggleStatus() {
    isReady = !isReady;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Vendor cart", style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 5, right:5, top: 30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               height: MediaQuery.of(context).size.width * 0.6,
               child: Row(
                 children: [
                   Container(
                     padding: const EdgeInsets.all(20),
                     height:  MediaQuery.of(context).size.width * 0.5,
                     width: MediaQuery.of(context).size.width * 0.45,
                     color: Colors.grey,
                   ),
                   const SizedBox(width: 8,),
                   Container(
                     padding: const EdgeInsets.only(top: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AppSmallText(text: "Item description"),
                         const SizedBox(height: 8,),
                         Text("Ordered date"),
                         const SizedBox(height: 8,),
                         Text("Estimated delivery date"),
                         const SizedBox(height: 8,),
                         Text("Payment Status "),
                         const SizedBox(height: 8,),
                         TextButton(onPressed: (){}, child: Text("Customer Details")),
                         Row(
                           children: [
                             AppLargeText(text: "Notify buyer", size: 16,),
                             Switch.adaptive(value: isReady, onChanged: (value){
                               setState((){
                                 value = !isReady;
                               });
                             })
                           ],
                         )

                       ],
                     ),
                   )
                 ],
               ),
             ),
            ],
          ),
        ),
      )
    );
  }
}
