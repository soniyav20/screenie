import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderHome extends StatefulWidget {
  const CarouselSliderHome({Key? key}) : super(key: key);

  @override
  State<CarouselSliderHome> createState() => _CarouselSliderHomeState();
}

class _CarouselSliderHomeState extends State<CarouselSliderHome> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pics = [
      Container(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Colorful",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/colorful.jpeg'),
                fit: BoxFit.fitHeight)),
      ),
      Container(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Amoled",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/amoled.jpeg'),
                fit: BoxFit.fitHeight)),
      ),
      Container(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Colorful",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/colorful2.jpeg'),
                fit: BoxFit.fitHeight)),
      ),
      Container(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "SuperHero",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/superHero.jpeg'),
                fit: BoxFit.fitHeight)),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height /
                2, // Height of the carousel
            autoPlay: false, // Auto-play carousel
            enlargeCenterPage: true, // Enlarge the center item
            aspectRatio: 16 / 9, // Aspect ratio of items
            viewportFraction:
                0.8, // Fraction of the viewport occupied by each item
          ),
          items: pics),
    );
  }
}
