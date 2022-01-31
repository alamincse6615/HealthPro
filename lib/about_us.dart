import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About_US extends StatefulWidget {
  const About_US({Key? key}) : super(key: key);

  @override
  _About_USState createState() => _About_USState();
}

class _About_USState extends State<About_US> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Image(
              width: double.infinity,
              height:MediaQuery.of(context).size.height/3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://m.facebook.com/photo.php?fbid=2821117764821435&id=100007697164232&set=a.1376108005989092&source=11'),
            ),
            Positioned(
              bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://m.facebook.com/photo.php?fbid=2821117764821435&id=100007697164232&set=a.1376108005989092&source=11'),
                ),),

          ],
        ),

        SizedBox(height: 60,),
        ListTile(
          title: Center(
              child: Text(
                "Jisan Zomaddar",
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ),
          subtitle: Center(child: Text("Famouse pola")),
        ),
        FlatButton.icon(
            onPressed: (){},
            icon: Icon(Icons.mail),
            label: Text('Hire Me',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IndieFlower',

              ),
            ),
            color: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
          ),
        ),
        ListTile(
          title: Text('About Us', style: TextStyle(fontFamily: 'IndieFlower'),),
          subtitle: Text('Hi, I\'m Rasel Hassan, Different kinds of disposable plastic products \nhave been widely used in residents’ lives, especially with the\n development of new industry such as e-commerce, express delivery and take- out,\nthe consumption of plastic lunch boxes and plastic packaging has risen rapidly. Without proper regulation and control \n of plastic management, these plastic have been discard randomly,\n result in great environment risk and huge White Pollution.',style: TextStyle(fontFamily: 'IndieFlower', letterSpacing: 1),),

        ),
      ],
    );
  }
}
