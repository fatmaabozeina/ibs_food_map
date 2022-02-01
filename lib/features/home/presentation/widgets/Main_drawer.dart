import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            width: 50,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFC2FFF9),
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
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
