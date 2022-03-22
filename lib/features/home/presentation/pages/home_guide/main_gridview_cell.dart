import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';

class MainGridViewCell extends StatelessWidget {
  MainGridViewCell({this.imageUrl, this.label, required this.rating});

  String? imageUrl;
  String? label;
  String? rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: const Color(0xFFFBDCC4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image(
                      image: NetworkImage(imageUrl ?? ""),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      label ?? "",
                      style: TextStyle(color: Colors.black45),
                    )),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(rating ?? "",
                              style: TextStyle(color: Colors.red))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
