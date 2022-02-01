import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';

class MainGridViewCell extends StatelessWidget {
  const MainGridViewCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFBDCC4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 60,
                child: Image(
                  image: AssetImage(ImagesPathts.fruitCategoryCell),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: const Text(
                  'Apple',
                  style: TextStyle(color: Colors.black45),
                )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Rating:',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text('high', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
