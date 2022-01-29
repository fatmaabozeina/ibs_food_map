import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/foodmap_state.dart';
import 'package:ibs_food_map/features/home/presentation/pages/search.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';

class IBSFoodMap extends StatefulWidget {
  IBSFoodMap({Key? key}) : super(key: key);

  @override
  _IBSFoodMapState createState() => _IBSFoodMapState();
}

class _IBSFoodMapState extends State<IBSFoodMap> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FoodMapCubit(),
      child: BlocConsumer<FoodMapCubit, FoodMapStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              // backgroundColor: const Color(0xFFC6D57E),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,

              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              title: RichText(
                text: const TextSpan(
                  text: 'Food ',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                    TextSpan(
                        text: 'ap',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    navigateTo(context, SearchScreen());
                  },
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                      ),
                      shrinkWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFC6D57E),
//         // backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//         ),
//         title: RichText(
//           text: const TextSpan(
//             text: 'Food ',
//             style: TextStyle(color: Colors.black, fontSize: 15),
//             children: <InlineSpan>[
//               TextSpan(
//                   text: 'M',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
//               TextSpan(
//                   text: 'ap',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             ],
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search),
//             color: Colors.black,
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Text(
//                 'A',
//                 style: TextStyle(fontSize: 25, color: Colors.grey),
//               ),
//             ),
//             Expanded(
//               child: GridView.builder(
//                 itemCount: 10,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10),
//                 itemBuilder: (BuildContext context, int index) => Container(
//                   color: Colors.red,
//                   height: 200,
//                   width: 200,
//                 ),
//                 shrinkWrap: false,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );