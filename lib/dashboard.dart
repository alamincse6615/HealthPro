import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'fooddetails.dart';

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
              child: Column(
                children: [
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
                          backgroundImage: AssetImage("assets/food.png"),
                          maxRadius: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About Food",
                style: TextStyle(fontSize: 25),
              ),
            )),
        SizedBox(
          height: 190,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white)),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * .40,
                      child: Column( mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              child: Image.asset(
                                "assets/4. totato.jpg",
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 8),
                            child: Text("Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "category",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 15,
                  ),
                );
              }),
        ),
        Container(
          child: ElevatedButton(
            child: const Text("Nextpage In Heare"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (cotext) => const FoodDetails()));
            },
          ),
        ),



        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 250.0,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Cobra',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.7',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Front Plank',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Supermans',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.2',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Push-up',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.7',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Contralateral Limb Raises',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Bent Knee Push-up',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.4',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.lock,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FoodDetails()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  decoration: BoxDecoration(
                    color:  Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            height: 110,
                            image: AssetImage('assets/4. totato.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Downward-facingDog',
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color:  Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            '4.1',
                            style: TextStyle(
                                fontSize: 16.0,color:  Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.work_outline,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100.0),
                            child: Icon(
                              Icons.people,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        Text(
          '“The only bad exercise is the one you skipped.”',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.black),
        ),
        MaterialButton(
          minWidth: double.infinity,
          color: Colors.indigoAccent,
          shape: StadiumBorder(),
          onPressed: () {},
          child: Text(
            'Workout Started',
            style: TextStyle(
                fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    )

    );
  }
}
