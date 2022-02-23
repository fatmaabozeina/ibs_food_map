import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';

import 'package:ibs_food_map/features/home/presentation/pages/start_fodmaps.dart';
import 'package:ibs_food_map/features/home/presentation/pages/food_guide.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';

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
        // backgroundColor: Colors.white60,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.white,
              height: 150,
              child: DrawerHeader(
                  child: Image(
                image: AssetImage(ImagesPathts.drawerHeader),
                fit: BoxFit.cover,
              )),
            ),
            DrawerCategory(
              label: 'FoodGuide',
              image: ImagesPathts.drawerFoodGuide,
              onPressed: () {
                navigateTo(context, IBSFoodGuide());
              },
            ),
            DrawerCategory(
              label: 'About FODMAPs',
              image: ImagesPathts.drawerAboutFoodMab,
              onPressed: () {
                navigateTo(context, StartFODMAPs());
              },
            ),
            DrawerCategory(
              label: 'Recipes',
              image: ImagesPathts.drawerRecipes,
              onPressed: () {},
            ),
            DrawerCategory(
              label: 'Dietitian',
              image: ImagesPathts.drawerdietitian,
              onPressed: () {},
            ),
            DrawerCategory(
              label: 'Diary',
              image: ImagesPathts.drawerDiary,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerCategory extends StatelessWidget {
  final label;
  final image;
  var onPressed;
  DrawerCategory(
      {required this.label, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      color: Colors.white38,
      child: ListTile(
          onTap: onPressed,
          title: Text(
            label,
            style: TextStyle(fontSize: 15, color: Color(0xFF1E6F5C)),
          ),
          leading: Container(
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage(image),
            ),
          )),
    );
  }
}
