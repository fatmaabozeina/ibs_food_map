import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';

import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/foodmap_state.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/category_card.dart';

import 'package:ibs_food_map/features/home/presentation/widgets/category_list.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/Main_drawer.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/details_dialog.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/main_gridview_cell.dart';

import '../../../../data_model.dart';
import '../../../../dio_helper.dart';
import '../widgets/main_app_bar.dart';

class IBSFoodGuide extends StatefulWidget {
  IBSFoodGuide({Key? key}) : super(key: key);

  @override
  _IBSFoodGuideState createState() => _IBSFoodGuideState();
}

class _IBSFoodGuideState extends State<IBSFoodGuide> {
  FoodMapCubit cubit = FoodMapCubit();
  var selectedIndex = -1;
  List<CategoryCard> categoryList = [];

  List<_CategorieInfo> categoriesInfo = [
    _CategorieInfo(label: 'Fruits', imagePath: ImagesPathts.fruitCategoryCell),
    _CategorieInfo(
        label: 'vegetable', imagePath: ImagesPathts.vegetableCategoryCell),
    _CategorieInfo(
        label: 'cereals', imagePath: ImagesPathts.cerealCategoryCell),
    _CategorieInfo(
        label: 'condiments', imagePath: ImagesPathts.condimentCategoryCell),
    _CategorieInfo(label: 'nuts', imagePath: ImagesPathts.nutsCategoryCell)
  ];

  void onCategoryCardTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => cubit..getFruits(),
      child: BlocConsumer<FoodMapCubit, FoodMapStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetFruitsDataSuccefulState) {
            print('nice fruits');
          } else {
            print('couldnt get fruits');
          }
          return Scaffold(
            backgroundColor: const Color(0xFFA9DB4D),
            appBar: PreferredSize(
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
                              itemCount: cubit.fruitsList?.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: .8,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20),
                              itemBuilder: (BuildContext context, int index) =>
                                  GestureDetector(
                                onTap: () {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        DetailsDialog(),
                                  );
                                },
                                child: MainGridViewCell(
                                  imageUrl: cubit.fruitsList?[index].image,
                                  label: cubit.fruitsList?[index].name,
                                  rating: cubit.fruitsList?[index].rating,
                                ),
                              ),
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
                  child: Container(
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: this.categoriesInfo.length,
                        itemBuilder: ((context, index) {
                          return CategoryCard(
                              selected: selectedIndex == index,
                              label: this.categoriesInfo[index].label,
                              image: this.categoriesInfo[index].imagePath,
                              index: index,
                              onTap: onCategoryCardTap);
                        })),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CategorieInfo {
  final String label;
  final String imagePath;
  _CategorieInfo({required this.label, required this.imagePath});
}
