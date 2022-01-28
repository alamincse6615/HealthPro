import 'package:flutter/material.dart';

import 'dashboard.dart';



class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
                  "assets/Jisan2.jpg",
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
                  title: const Text(
                    "Doctor Strange",
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
                        children: const <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "First appearance",
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Team affiliations",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.indigoAccent,
                    ),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "Avengers Defenders Illuminati Infinity Watch Midnight Sons New AvengersThe Order",
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Stephen Strange (Marvel Cinematic Universe)",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.indigoAccent,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Text(
                    "Doctor Stephen Strange is a fictional character appearing in American comic books published by Marvel Comics. Created by Steve Ditko with Stan Lee,[5] the character first appeared in Strange Tales #110 (cover-dated July 1963). Doctor Strange serves as the Sorcerer Supreme, the primary protector of Earth against magical and mystical threats. Strange was created during the Silver Age of Comic Books to bring a different kind of character and themes of mysticism to Marvel Comics.The character begins as an extremely talented but egotistical surgeon who loses the ability to operate after a car crash severely damages his hands beyond repair. Searching the globe for healing, he encounters the Ancient One, the Sorcerer Supreme. Strange becomes his student, and learns to be a master of both the mystical and the martial arts. He acquires an assortment of mystical objects, including the powerful Eye of Agamotto and Cloak of Levitation, and takes up residence in a mansion referred to as the Sanctum Sanctorum, located in 177A Bleecker Street, Greenwich Village, New York City. Strange assumes the title of Sorcerer Supreme and, with his friend and valet Wong, defends the world from mystical threats.The character was first portrayed in live-action by Peter Hooten in the 1978 television film Dr. Strange. Benedict Cumberbatch portrays Stephen Strange in the Marvel Cinematic Universe films Doctor Strange (2016), Thor: Ragnarok (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), and Spider-Man: No Way Home (2021). Cumberbatch also voices an alternate universe version in the Disney+ animated series What If...? (2021) and will reprise his role in the upcoming film Doctor Strange in the Multiverse of Madness (2022).",
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
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.cyanAccent,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (cotext)=>DashBoard()
            )
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.amp_stories),
      ),
    );
  }
}