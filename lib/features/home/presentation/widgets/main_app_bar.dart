import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/pages/notification_screen.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';

import '../pages/search.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFA9DB4D),
      elevation: 0,
      // centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          size: 26,
          color: Colors.white,
        ),
      ),
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
    );
  }
}
