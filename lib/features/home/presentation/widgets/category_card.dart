import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/cubit/food_map_cubit.dart';

class CategoryCell extends StatefulWidget {
  String image;
  String label;

  CategoryCell({
    required this.image,
    required this.label,
  });

  @override
  State<CategoryCell> createState() => _CategoryCellState();
}

class _CategoryCellState extends State<CategoryCell> {
  bool selected = false;
  FoodMapCubit cubit = FoodMapCubit();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          cubit.getFruits();
        });
      },
      child: Card(
        shape: selected == false
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
