import 'package:flutter/material.dart';
import 'package:nencia/constants/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppConstants.appWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    const Text("Nencia", style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18, color: AppConstants.appPrimaryColor
                    ),),
                    Row(
                      children: [
                        Icon(Icons.search),
                        const SizedBox(width: 10,),
                        Icon(Icons.notifications)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 25, right: 25, top: 8),
                child: Text("Top Brands", style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
              const SizedBox(height: 8,),
              Container(
                height: 130,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                    itemBuilder: (_, index){
                      return Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (index % 2== 0)?AppConstants.appAlternativeSecondary:AppConstants.appPrimaryColor
                                ),
                              ),
                            ),
                            const SizedBox(height: 8,),
                            Container(child: const Text("Brand Name", style: TextStyle(
                               fontWeight: FontWeight.w500, fontSize: 12
                            ),)),
                            const SizedBox(width: 20,),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const Divider(
                color: AppConstants.appAlternativePrimary,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:AppConstants.appSecondaryColor
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Kuf Collections", style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600
                            ),),
                            Text("Abuja", style: TextStyle(
                                fontSize: 10,
                            ),),
                            Text("@kuf_collections", style: TextStyle(
                                fontSize: 10
                            ),),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.star_border_outlined, size: 20,),
                        Icon(Icons.star_border_outlined, size: 20,),
                        Icon(Icons.star_border_outlined, size: 20,),
                        Icon(Icons.star_border_outlined, size: 20,),
                        Icon(Icons.star_border_outlined, size: 20,),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox( height: 15,),
              // Container(
              //   height: 120,
              //   width: 120,
              //   child: Column(
              //     children: [
              //       const SizedBox(height: 100, width: 100,
              //         child: Card(
              //           elevation: 2,
              //           color: Colors.red,
              //         ),
              //       ),
              //       Row(
              //         children: const [
              //           Text("Okey"),
              //           Text("Okey"),
              //           Text("Okey")
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              SingleChildScrollView(
                child: Container(
                  height: 400,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                      ),
                      itemBuilder: (_, index){
                        return Container(
                          height: 180,
                          width: width * 0.5,
                          child: Column(
                            children: [
                                SizedBox(height: 150, width: 153,
                                child: Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  color: index % 3 == 0? AppConstants.appAlternativePrimary: AppConstants.appSecondaryColor,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.heart_broken_rounded, color: Colors.red, size: 20,),
                                      Text("20", style: TextStyle(
                                        fontSize: 12, color: AppConstants.appPrimaryColor
                                      ),),
                                    ],
                                  ),
                                 Row(
                                    children: const [
                                      Icon(Icons.remove_red_eye, color: AppConstants.appSecondaryColor, size: 20,),
                                      Text("5", style: TextStyle(
                                          fontSize: 12, color: AppConstants.appPrimaryColor
                                      ),),
                                    ],
                                  ),
                                  const Icon(Icons.menu_open_sharp, color: AppConstants.appSecondaryColor, size: 20,),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    itemCount: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
