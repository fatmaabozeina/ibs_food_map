import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/diary/database/database.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/diary/widgets/default_form_field.dart';
import 'package:intl/intl.dart';

class AddMeal extends StatefulWidget {
  AddMeal(this.mealAdded);
  final Function(String)? mealAdded;
  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  TextEditingController typeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('add your notes'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              title: Text(
                'Meal',
              ),
              // subtitle: Text('choose type to add'),
              children: [
                DefaultFormField(
                    prefix: Icons.title,
                    keyboard: TextInputType.name,
                    hint: 'Type',
                    fieldController: typeController),
                SizedBox(
                  height: 10,
                ),
                DefaultFormField(
                    prefix: Icons.date_range,
                    keyboard: TextInputType.datetime,
                    hint: 'Date',
                    fieldController: dateController),
                SizedBox(
                  height: 10,
                ),
                DefaultFormField(
                    prefix: Icons.title,
                    keyboard: TextInputType.text,
                    hint: 'Time',
                    fieldController: timeController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          print('canceled');
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          // if (widget.mealAdded != null) {
                          //   widget.mealAdded!(typeController.text);
                          // }

                          insertToDatabase().then((value) {
                            print('wow');
                          });
                          Navigator.pop(context);
                        },
                        child: Text('Save'))
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: Text('Stress'),
            ),
            ExpansionTile(
              title: Text('Symptoms'),
            )
          ],
        ),
      ),
    );
  }
}
