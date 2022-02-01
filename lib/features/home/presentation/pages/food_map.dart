import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/foodmap_state.dart';

import 'package:ibs_food_map/features/home/presentation/widgets/category_list.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/Main_drawer.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/main_gridview_cell.dart';

import '../widgets/main_app_bar.dart';

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
            backgroundColor: const Color(0xFFA9DB4D),
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(100), child: MainAppBar()),
            drawer: const MainDrawer(),
            body: Stack(
              children: [
                Container(),
                Positioned(
                  top: 50,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70.0),
                        )),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Popular Foodstuffs',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GridView.builder(
                              itemCount: 20,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: .8,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20),
                              itemBuilder: (BuildContext context, int index) =>
                                  const MainGridViewCell(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 60, right: 20, top: 8),
                  alignment: AlignmentDirectional.center,
                  height: 80,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: categoryList,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
