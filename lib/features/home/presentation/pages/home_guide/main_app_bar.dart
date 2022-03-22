import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/common_widget/navigation.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_guide/notification_screen.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_guide/Main_drawer.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({
    Key? key,
  }) : super(key: key);

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFA9DB4D),
      elevation: 0,
      title: RichText(
        text: const TextSpan(
          text: 'Food ',
          style: TextStyle(color: Colors.white, fontSize: 20),
          children: <InlineSpan>[
            TextSpan(
                text: 'M',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            TextSpan(
                text: 'ap',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            navigateTo(context, const NotificationScreen());
          },
          icon: const Icon(
            Icons.notification_important_outlined,
            size: 26,
          ),
          color: Colors.white,
        )
      ],
      bottom: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xFFA9DB4D),
        title: Container(
          height: 40,
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: 'Search...',
                prefixIcon: Icon(
                  Icons.search,
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      this.controller.text = "";
                    },
                    icon: Icon(Icons.clear))),
          ),
        ),
      ),
    );
  }
}
