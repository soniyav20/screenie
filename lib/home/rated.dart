import 'package:flutter/material.dart';
import 'package:screenie/widgets/drawer.dart';

import '../open_wallpaper.dart';

class Rated extends StatefulWidget {
  const Rated({super.key});

  @override
  State<Rated> createState() => _RatedState();
}

class _RatedState extends State<Rated> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();

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
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/colorful.jpeg'), fit: BoxFit.cover)),
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
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/amoled.jpeg'), fit: BoxFit.cover)),
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
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/colorful2.jpeg'), fit: BoxFit.cover)),
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
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('assets/superHero.jpeg'), fit: BoxFit.cover)),
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
                          "Rated",
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
                Container(
                  height: MediaQuery.of(context).size.height - 20 - 40,
                  child: GridView.builder(
                      controller: _scrollController,
                      itemCount: 20, // Number of grid elements
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10, // Number of columns in the grid
                        childAspectRatio: 2 / 3, // Width / Height ratio
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: pics[(index % 4)],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OpenWallPaper()),
                            );
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerHome(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 500), // Animation duration
            curve: Curves.easeInOut, // Animation curve
          );
        },
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
