import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';

class CategoryCard extends StatefulWidget {
  String image;
  String label;
  int index;
  Function(int) onTap;
  bool selected;
  CategoryCard({
    required this.image,
    required this.label,
    required this.index,
    required this.onTap,
    required this.selected,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  FoodMapCubit cubit = FoodMapCubit();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index);
      },
      child: Card(
        shape: widget.selected == false
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                side: BorderSide.none)
            : const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                side: BorderSide(color: Color(0xFF4E9F3D), width: 2)),
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(5),
          width: 75,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Image(
                image: AssetImage(widget.image),
              ),
            ),
            Text(
              widget.label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ]),
        ),
      ),
    );
  }
}
