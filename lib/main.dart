import 'package:flutter/material.dart';
import 'package:ibs_food_map/dio_helper.dart';

import 'package:ibs_food_map/features/home/presentation/pages/home_guide/FODMAPs_guide.dart';

import 'package:ibs_food_map/features/home/presentation/pages/boarding_screen/boarding_screen.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BoardingScreen() //OnBoarding() //OnBoarding(),
        );
  }
}
