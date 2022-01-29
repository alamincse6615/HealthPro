import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SafeArea(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text("Hello, Imam",style: TextStyle(fontSize: 30),),
                            Text("Good Morning", style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/Jisan2.jpg"),
                          maxRadius: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
              color: Colors.red,
              height: 300,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("About Food",style: TextStyle(fontSize: 25),),
              )),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Card(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      elevation: 15,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * .60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:150,
                              width: MediaQuery.of(context).size.width ,
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/4. totato.jpg",
                                fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 8),
                              child: Text(
                                  "Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("category",style: TextStyle(fontSize: 18),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      )
    );
  }
}
