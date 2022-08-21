import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
        icon: Icon(Icons.close, color: Colors.white,)),
        title: Text("Customer reviews",style: TextStyle(
          fontSize: 18,
          color: Colors.white
        ),),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 40,),
          Container(
            height: MediaQuery.of(context).size.width * 0.5,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text( "5.0", style: TextStyle(
                      fontSize: 40
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                        children: [
                          for (int index = 0; index < 5; index++)
                            const Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.deepOrange,
                            ),
                        ],
                      ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("2 ratings")
                      ],
                    )
                  ],
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [

                  ],
                )
              ],
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.6),
                          child: Icon(Icons.person),
                        ),
                        const SizedBox(width: 15,),
                        Column(
                          children: [
                            Text("Kufre"),
                            Row(
                              children: const [
                                Icon(Icons.location_on, size: 10,),
                                Text("Abuja")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        for (int index = 0; index < 5; index++)
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.deepOrange,
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Higly customised agbada from the heart of katsina designed to suit your athestic needs",
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.6,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Icon(Icons.image_outlined, size: 60,),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Icon(Icons.image_outlined, size: 60,),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
