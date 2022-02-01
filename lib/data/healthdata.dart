






/*

return Container(

width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height*.88,
child: CarouselSlider(
items: [
Card(
elevation: 30,
shape: OutlineInputBorder(
borderRadius: BorderRadius.circular(30),
borderSide:
const BorderSide(color: Colors.white)),
child: ClipRRect(
borderRadius: BorderRadius.circular(30),
child: Image.asset(
health[index].image.toString(),
fit: BoxFit.cover,
),
)),
],
options: CarouselOptions(
height: 220,
aspectRatio: 16 / 9,
viewportFraction: 0.8,
initialPage: 2,
enableInfiniteScroll: true,
reverse: false,
autoPlay: true,
autoPlayInterval:
const Duration(seconds: 3),
autoPlayAnimationDuration:
const Duration(milliseconds: 1200),
autoPlayCurve: Curves.linear,
enlargeCenterPage: true,
scrollDirection: Axis.horizontal,
disableCenter: false,
pageSnapping: false,
)),
);*/
