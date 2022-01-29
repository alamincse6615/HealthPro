import 'package:flutter/material.dart';

class HealthDetails extends StatefulWidget {
  const HealthDetails({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<HealthDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/senha.png",),
                fit: BoxFit.cover,
              )
          ),
          child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(

                    child: new FittedBox(
                      child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(24.0),
                          shadowColor: Color(0x802196F3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0),

                                ),
                              ),
                              Container(
                                width: 250,
                                height: 200,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/1. Apple.jpg"),

                                  ),
                                ),
                              ),
                            ],)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/2. Myths-around-milk-300x169.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/3.shak.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/4. totato.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/5.choklate.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/6. dim.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(

                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/7.ada.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/8. sea food.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/9.fast food.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child:Card(
                          elevation: 14.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                height: 180,
                                child: ClipRRect(
                                  child: Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("assets/10. dhonepata.jpg"),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}
