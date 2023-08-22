import 'package:flutter/material.dart';
import 'package:screenie/widgets/drawer.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                          "Categories",
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
                // Container(
                //   height: 110,
                //   child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: 8,
                //       itemBuilder: (BuildContext context, int index) {
                //         return Padding(
                //           padding: const EdgeInsets.all(4.0),
                //           child: Container(
                //             width: 110,
                //             child: CircleAvatar(
                //               backgroundImage: AssetImage("assets/amoled.jpeg"),
                //               child: Container(
                //                 child: Center(
                //                   child: Column(
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     children: [
                //                       Text("Amoled"),
                //                       Text(
                //                         "Items[141]",
                //                         style: TextStyle(
                //                             fontSize: 15,
                //                             fontWeight: FontWeight.w200),
                //                       )
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         );
                //       }),
                // ),
                Container(
                  height: MediaQuery.of(context).size.height - 20 - 40,
                  child: GridView.builder(
                      itemCount: 8, // Number of grid elements
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        childAspectRatio: 1.5 / 1, // Width / Height ratio
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 60,
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
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerHome(),
    );
  }
}
