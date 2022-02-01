import 'package:flutter/material.dart';
import 'healthcategory.dart';

class FoodDetails extends StatefulWidget {


  String name;
   String title;
   String subtitle;
   String category;
  String description;
  String image;


  FoodDetails( this.name, this.title, this.subtitle, this.category,
      this.description, this.image);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<FoodDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name,style :TextStyle(fontSize: 16),),
      ),
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: const Color(0xFF200087),
            expandedHeight: 300,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(40)),
                child: Image.asset(
                  widget.image
                  ,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title:  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.indigoAccent,
                    ),
                  ),

                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            widget.category,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Strange Tales #110 (July 1963)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    widget.title
                  ,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Text(
                    widget.description
                    ,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}