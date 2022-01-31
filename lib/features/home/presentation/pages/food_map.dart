import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/foodmap_state.dart';
import 'package:ibs_food_map/features/home/presentation/pages/search.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/category_card.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';

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
            // backgroundColor: const Color(0xFFC6D57E),
            backgroundColor: const Color.fromARGB(255, 192, 230, 79),
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(100), child: MainAppBar()),
            body: Stack(
              children: [
                Container(
                    // color: Colors.amber,
                    ),
                Positioned(
                  top: 50,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
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
                              itemCount: 10,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20),
                              itemBuilder: (BuildContext context, int index) =>
                                  const Expanded(
                                child: Card(
                                  color: Colors.red,
                                ),
                              ),
                              shrinkWrap: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 60,
                    right: 20,
                  ),
                  alignment: AlignmentDirectional.center,
                  height: 80,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CategoryCell(
                          label: 'Fruits',
                          image: (ImagesPathts.fruitCategoryCell),
                        ),
                        CategoryCell(
                          label: 'vegetable',
                          image: ImagesPathts.vegetableCategoryCell,
                        ),
                        CategoryCell(
                          label: 'cereals',
                          image: ImagesPathts.cerealCategoryCell,
                        ),
                        CategoryCell(
                          label: 'condiments',
                          image: ImagesPathts.condimentCategoryCell,
                        ),
                        CategoryCell(
                          label: 'nuts',
                          image: ImagesPathts.nutsCategoryCell,
                        ),
                      ],
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
