import 'package:flutter/material.dart';
import 'package:nencia/constants/app_color.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.settings_outlined, size: 30,)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.orange,
                          ),
                          SizedBox(width: 15,),
                          Text(" Kufre Solomon", style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500, color: AppConstants.appPrimaryColor
                          ),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.heart_broken_rounded),
                              const SizedBox(height: 5,),
                              Text("Wish List")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.star),
                              const SizedBox(height: 5,),
                              Text("Following")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.punch_clock),
                              const SizedBox(height: 5,),
                              Text("Viewed")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.heart_broken_rounded),
                              const SizedBox(height: 5,),
                              Text("Wish List")
                            ],
                          ),
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  height: 140,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: AppConstants.appWhite,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Orders", style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500
                          ),),
                          Row(
                            children: [
                              Text("View all", style: TextStyle(
                                  fontSize: 14,
                              ),),
                              const SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios, size: 15,)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 5,),
                      const Divider(),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.wallet_giftcard_sharp, color: Colors.deepOrange, size: 30,),
                              const SizedBox(height: 5,),
                              Text("Unpaid")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.indeterminate_check_box_rounded, color: Colors.deepOrange, size: 30,),
                              const SizedBox(height: 5,),
                              Text("To be shipped")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_shipping_outlined, color: Colors.deepOrange,size: 30,),
                              const SizedBox(height: 5,),
                              Text("Shipped")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.rate_review_rounded, color: Colors.deepOrange, size: 30,),
                              const SizedBox(height: 5,),
                              Text("To be reviewed")
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppConstants.appWhite,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppConstants.appWhite,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
