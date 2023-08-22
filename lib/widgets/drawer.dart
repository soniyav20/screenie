import 'package:flutter/material.dart';

import '../main.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.4,
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Image(
              image: AssetImage("assets/screenie.jpeg"),
              fit: BoxFit.fitWidth,
            )),
            Container(
              decoration: new BoxDecoration(
                color: selected == 1 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  selected = 1;
                },
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 2 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                title: const Text(
                  'Favourite',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 3 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.live_tv,
                  color: Colors.white,
                ),
                title: const Text(
                  'Setup Tutorial',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 4 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                ),
                title: const Text(
                  'Get Featured',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 5 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  'Follow on Instagram',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 6 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.send_sharp,
                  color: Colors.white,
                ),
                title: const Text(
                  'Join Telegram Group',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 7 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: selected == 8 ? Colors.red : Colors.black,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.login,
                  color: Colors.white,
                ),
                title: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
