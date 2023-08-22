import 'package:flutter/material.dart';
import 'package:screenie/open_wallpaper.dart';
import 'package:screenie/widgets/carousel_slider.dart';
import 'package:screenie/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                  Icon(Icons.favorite_border_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/superHero.jpeg'),
                fit: BoxFit.fitHeight)),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      key: _scaffoldKey,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.notes,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: CarouselSliderHome()),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Categories",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Text(
                      "VIEW ALL",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: 110,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/amoled.jpeg"),
                              child: Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Amoled"),
                                      Text(
                                        "Items[141]",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Latest Setups",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Text(
                      "VIEW ALL",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: pics[index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OpenWallPaper()),
                              );
                            },
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Popular Setups",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Text(
                      "VIEW ALL",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: pics[3 - index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OpenWallPaper()),
                              );
                            },
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerHome(),
    );
  }
}
