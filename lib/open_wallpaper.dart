import 'package:flutter/material.dart';

class OpenWallPaper extends StatefulWidget {
  const OpenWallPaper({Key? key}) : super(key: key);

  @override
  State<OpenWallPaper> createState() => _OpenWallPaperState();
}

class _OpenWallPaperState extends State<OpenWallPaper> {
  bool _isContainerVisible = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/superHero.jpeg"),
        ),
      ),
      bottomSheet: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: _isContainerVisible ? 150 : 0, // Adjust the height
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Sliding Container Content',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          onPressed:
          _toggleContainerVisibility;
          showModalBottomSheet(
            backgroundColor: Colors.black,
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: !_isContainerVisible
                        ? Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.arrow_upward_rounded,
                            color: Colors.white,
                          ),
                  ),
                  Container(
                      height: 310,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4),
                            child: Text(
                              "Random",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Views",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "1.4k",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Downloads",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "100",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Ratings",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.format_paint_rounded,
                                      color: Colors.pink,
                                      size: 40,
                                    ),
                                    Text(
                                      "Set As",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 40,
                                    ),
                                    Text(
                                      "Rate",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      padding: EdgeInsetsDirectional.only(
                                          bottom:
                                              AppBar().preferredSize.height *
                                                  7),
                                      backgroundColor: Colors.white,
                                      duration:
                                          new Duration(milliseconds: 1000),
                                      content: Center(
                                        child: Text(
                                          "Downloaded Successfully!!!🥳🎉🎊",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ));
                                  },
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: Colors.blue,
                                        size: 40,
                                      ),
                                      Text(
                                        "Download",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Colors.tealAccent,
                                      size: 40,
                                    ),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Tags",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "Finesta",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text("@roshan",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Download",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "ICONS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.pink,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text("WIDGET",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.pink,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              );
            },
          );
        },
        child: _isContainerVisible
            ? Icon(Icons.arrow_downward_outlined)
            : Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}
