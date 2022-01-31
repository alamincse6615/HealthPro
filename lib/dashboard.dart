import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
        Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Custom App Bar
            Container(
              child: Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: MyPopupMenu(
                      child: Icon(
                        Icons.menu_rounded,
                        key: GlobalKey(),
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        Container(
            width: MediaQuery.of(context).size.width,

            child: Padding(

              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [




                  //abouat text section
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "About Food",
                          style: TextStyle(fontSize: 25),

                        ),



                      )

                  ),



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
                                        const BorderSide(color: Colors.white)),
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
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              Hossen[index].category.toString(),
                                              style: const TextStyle(fontSize: 18),
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
                        child: const Text(
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                                side: const BorderSide(width: 5),
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
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
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
class GraphClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path p = Path();

    //Cut the path
    p.moveTo(0,0);
    p.lineTo(size.width * .3, size.height);
    p.lineTo(size.width * .7, size.height);
    p.lineTo(size.width , 0);
    p.close();


    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

class MyPopupMenu extends StatefulWidget {
  final Widget child;
  MyPopupMenu({Key? key,required this.child}) : assert(child.key != null), super(key: key);

  @override
  _MyPopupMenuState createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onTap: _showPopupMenu,
    );
  }

  void _showPopupMenu() {
    //Find renderbox object
    RenderBox renderBox = (widget.child.key as GlobalKey).currentContext?.findRenderObject() as RenderBox;
    Offset position = renderBox.localToGlobal(Offset.zero);

    showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context){
          return PopupMenuContent(
            position: position,
            size: renderBox.size,
            onAction: (x){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(seconds: 1),
                content: Text('Action => $x'),
              ));
            },
          );
        }
    );
  }
}

class PopupMenuContent extends StatefulWidget {
  final Offset position;
  final Size size;
  final ValueChanged<String>? onAction;
  const PopupMenuContent({Key? key,required this.position, required this.size, this.onAction}) : super(key: key);

  @override
  _PopupMenuContentState createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent> with SingleTickerProviderStateMixin{
  //Let's create animation
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        _closePopup("");
        return false;
      },
      child: GestureDetector(
        onTap: ()=> _closePopup(""),
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right:  (MediaQuery.of(context).size.width - widget.position.dx) - widget.size.width,
                  top: widget.position.dy,
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child){
                      return Transform.scale(
                        scale: _animation.value,
                        alignment: Alignment.topRight,
                        child: Opacity(opacity: _animation.value,child: child),
                      );
                    },
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                        margin: const EdgeInsets.only(left: 64),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 8,
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            //Repeat now
                            GestureDetector(
                              onTap: ()=> _closePopup("About US"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF0E3),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(Icons.info_outlined, color: Colors.red,),
                                  ),
                                  const SizedBox(width: 12,),
                                  Text(
                                    "About US",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Edit workout
                            const SizedBox(height: 16,),

                            GestureDetector(
                              onTap: ()=> _closePopup("Privacy Policy"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE1E1FC),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(Icons.privacy_tip_outlined , color: Color(0xFF3840A2),),
                                  ),
                                  const SizedBox(width: 12,),
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Share workout
                            const SizedBox(height: 16,),

                            GestureDetector(
                              onTap: ()=> _closePopup("ShareNow"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFDDF3FD),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(Icons.share, color:Color(0xFF0586C0),),
                                  ),
                                  const SizedBox(width: 12,),
                                  Text(
                                    "Share Now",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16,),

                            GestureDetector(
                              onTap: ()=> _closePopup("Exit"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFA9D2AC),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(Icons.exit_to_app_outlined, color:Color(
                                        0xFF030303),),
                                  ),
                                  const SizedBox(width: 12,),
                                  Text(
                                    "Exit",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Chat box
                            const SizedBox(height: 32,),

                            GestureDetector(
                              onTap: ()=> _closePopup("getHelp"),
                              child: Container(
                                width: double.maxFinite,
                                height: 150,
                                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC2E3F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.messenger_outline_rounded,
                                        color: Color(0xff1e93ad),
                                        size: 44,
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        "Get Help",
                                        style: TextStyle(
                                            color: Color(0xff1e93ad),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _closePopup(String action) {
    _animationController.reverse().whenComplete((){
      Navigator.of(context).pop();

      if(action.isNotEmpty) widget.onAction?.call(action);
    });
  }
}