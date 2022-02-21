// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:ibs_food_map/features/home/presentation/pages/food_guide.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   double value = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             color: Color(0xFFE7ED9B),
//           ),
//           SafeArea(
//               child: Container(
//             width: 200,
//             padding: const EdgeInsets.all(10),
//             child: Expanded(
//               child: Center(
//                 child: ListView(
//                   children: [
//                     ListTile(
//                       onTap: () {},
//                       leading: Icon(Icons.settings),
//                       title: Text('setting'),
//                     ),
//                     ListTile(
//                       onTap: () {},
//                       leading: Icon(Icons.home),
//                       title: Text('Home'),
//                     ),
//                     ListTile(
//                       onTap: () {},
//                       leading: Icon(Icons.settings),
//                       title: Text('setting'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )),
//           TweenAnimationBuilder(
//               tween: Tween<double>(begin: 0, end: value),
//               duration: Duration(milliseconds: 500),
//               builder: (BuildContext context, double val, Widget? child) {
//                 return (Transform(
//                   transform: Matrix4.identity()
//                     ..setEntry(3, 2, 0.001)
//                     ..setEntry(0, 3, 200 * val)
//                     ..rotateY((pi / 6) * val),
//                   child: IBSFoodGuide(),
//                 ));
//               }),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 value == 0 ? value = 1 : value = 0;
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
