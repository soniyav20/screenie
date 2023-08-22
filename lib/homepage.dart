import 'package:flutter/material.dart';
import 'package:screenie/carousel_slider.dart';
import 'package:screenie/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
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
              CarouselSliderHome(),
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
              ListView.builder(itemBuilder: itemBuilder)
            ],
          ),
        ),
      ),
      drawer: DrawerHome(),
    );
  }
}
