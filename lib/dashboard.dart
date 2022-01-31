import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:healthpro/model/foodmodel.dart';

import 'fooddetails.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Future<List<FoodModel>> foodfunction() async {
    final foodProduct = await rootBundle.loadString("jsondata/foodinfo.json");
    final foodlist = json.decode(foodProduct) as List<dynamic>;
    return foodlist.map((e) => FoodModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //header section
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SafeArea(
                      child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/food_image_s.jpg",
                                ),
                                fit: BoxFit.cover,
                              )),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Hello, Imam",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      Text(
                                        "Good Morning",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  const CircleAvatar(
                                    backgroundImage:
                                    AssetImage("assets/food.png"),
                                    maxRadius: 50,
                                  )
                                ],
                              ),
                            )
                          ])),
                    ),
                  ),

                  //abouat text section
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "About Food",
                          style: TextStyle(fontSize: 25),
                        ),
                      )),

                //Category section
                  FutureBuilder(
                      future: foodfunction(),
                      builder: (context, imam) {
                        var Hossen = imam.data as List<FoodModel>;
                        return Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Hossen.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Card(
                                    shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                        BorderSide(color: Colors.white)),
                                    elevation: 15,
                                    child: Container(
                                      height: MediaQuery.of(context).size.height,
                                      width:
                                      MediaQuery.of(context).size.width * .60,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 150,
                                            width:
                                            MediaQuery.of(context).size.width,
                                            child: ClipRRect(
                                              child: Image.asset(
                                                Hossen[index].image.toString(),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(30),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 8),
                                            child: Text(
                                                Hossen[index].name.toString(),
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              Hossen[index].category.toString(),
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        );
                      }),


                  // about text section
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        child: Text(
                          "Just keep it",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: CarouselSlider(
                        items: [
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/food4.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/1. Apple.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/2. Myths-around-milk-300x169.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/3.shak.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/4. totato.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/5.choklate.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/6. dim.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/7.ada.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/8. sea food.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/9.fast food.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/10. dhonepata.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/food_image_s.jpg',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5),
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Center(
                                  child: Image.asset(
                                    'assets/hilsha fish.png',
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 220,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 2,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 1200),
                          autoPlayCurve: Curves.linear,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          disableCenter: false,
                          pageSnapping: false,
                        )),
                  ),

                ],
              ),
            )),
      ],
    ));
  }
}
