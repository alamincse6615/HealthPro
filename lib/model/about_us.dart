

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.help),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 80,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.95,
                    child: Card(
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back, size: 30,),
                        ),
                        SizedBox(width: 35,),
                        Text("Developers of HealthPro", style: TextStyle(
                            fontSize: 25),)
                      ],),
                      elevation: 10,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 200,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.95,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text("Feedback", style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(
                              "If you love using this app, give a review in Google play store. It would really inspire us to keep this app alive. \nNote: Contract example123@gmail.com for any further assistance.",
                              style: TextStyle(fontSize: 20),)
                          ],),
                      ),
                      elevation: 10,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height:3220,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.95,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text("Active Developers",
                              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/zihad.JPG"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Zihadul Islam", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/nurunnobe.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Nurunnobe Jomadder", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/rasel.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Rasel Hassan", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/zisan.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Zisan Ahmed", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/Ishak.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Md Ishak", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/imam.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("H M Imam Hossen", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/senha.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Senhasish", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/tomal.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Shahrear Tomal", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 330,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .82,
                                child: Card(
                                  elevation: 10,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/mithun.jpg"),
                                          maxRadius: 50,
                                        ),
                                        SizedBox(height: 15,),
                                        Text("Mithun Mandal", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                        Text("AI Designation", style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black45,
                                            fontStyle: FontStyle.italic),),
                                        SizedBox(height: 15,),
                                        Text("Flutter Developer",
                                          style: TextStyle(fontSize: 25,
                                              color: Colors.black),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(
                                                  (Icons.facebook), size: 50,
                                                  color: Colors.blueAccent,),
                                              ),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,
                                                    color: Colors.red,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                  onTap: () {

                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Icon(
                                                  (Icons.mail), size: 50,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],),
                      ),
                      elevation: 10,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

}

