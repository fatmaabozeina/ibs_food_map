import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 200,
      decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(250.0),
          )),
      child: Drawer(
        backgroundColor: Colors.white60,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              width: 50,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFDAD992),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'drawer header',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(
                  'setting',
                  style: TextStyle(fontSize: 20, color: Color(0xFF1E6F5C)),
                ),
                leading: Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
