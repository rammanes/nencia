import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {

  const CartItem({Key? key,}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 300,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: const BoxDecoration(
            borderRadius:  BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
            color: Colors.white),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Awaiting delivery", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500
                  ),),
                  Text("Jul 14, 2022", style: TextStyle(
                    fontSize: 13,
                  ),)
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: const [
                  Icon(Icons.house_outlined, size: 20,),
                  SizedBox(width: 10,),
                  Text("AjumaFashionStore"),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios, size: 10,)
                ],
              ),
              const SizedBox(height: 5,),
              const Divider(),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.deepOrange,
                      )
                    ],
                  ),
                  const SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("All in one set of men agbada, 2022", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 5,),
                      Text("Sky blue, 58, Nigeria", style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300
                      ),),
                      SizedBox(height: 5,),
                      Text("NGN 54,000.00", style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300
                      ),),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.1),
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text("Estimated delivery date: Aug 9, 2022"),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("NGN 58,386.00")
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 44,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.black)
                      ),
                      child: const Text("Track order"),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 44,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.white)
                      ),
                      child: const Text("Confirm receipt",style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
