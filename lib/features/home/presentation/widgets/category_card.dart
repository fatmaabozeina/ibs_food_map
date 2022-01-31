import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  String image;
  String label;
  CategoryCell({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(5),
          width: 75,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Image(
                image: AssetImage(image),
              ),
            ),
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ]),
        ),
      ),
    );
  }
}
