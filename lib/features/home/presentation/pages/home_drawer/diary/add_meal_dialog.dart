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
  double sliderValue = 20;

  List<bool> isOpen = [false, false, false];

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('add your notes'),
      content: SingleChildScrollView(
        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        // ExpansionTile(
        //   expandedCrossAxisAlignment: CrossAxisAlignment.start,
        //   title: Text(
        //     'Meal',
        //   ),
        //   // subtitle: Text('choose type to add'),
        //   children: [
        //     DefaultFormField(
        //         prefix: Icons.title,
        //         keyboard: TextInputType.name,
        //         hint: 'Type',
        //         fieldController: typeController),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     DefaultFormField(
        //         prefix: Icons.calendar_today,
        //         keyboard: TextInputType.datetime,
        //         hint: 'Date',
        //         ontap: () {
        //           showDatePicker(
        //                   context: context,
        //                   initialDate: DateTime.now(),
        //                   firstDate: DateTime.now(),
        //                   lastDate: DateTime.parse('2022-05-09'))
        //               .then((value) {
        //             dateController.text = DateFormat.yMMMd().format(value!);
        //           });
        //         },
        //         fieldController: dateController),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     DefaultFormField(
        //         prefix: Icons.watch_later_outlined,
        //         keyboard: TextInputType.datetime,
        //         ontap: () {
        //           print('time taped');
        //           showTimePicker(
        //                   context: context,
        //                   initialTime: TimeOfDay.now(),
        //                   initialEntryMode: TimePickerEntryMode.input)
        //               .then((value) {
        //             if (value != null) {
        //               timeController.text =
        //                   value.format(context).toString();
        //             }
        //           });
        //         },
        //         hint: 'Time',
        //         fieldController: timeController),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         TextButton(
        //             onPressed: () {
        //               Navigator.pop(context);

        //               print('canceled');
        //             },
        //             child: Text('Cancel')),
        //         TextButton(
        //             onPressed: () {
        //               // if (widget.mealAdded != null) {
        //               //   widget.mealAdded!(typeController.text);
        //               // }

        //               Navigator.pop(context);
        //             },
        //             child: Text('Save'))
        //       ],
        //     ),
        //   ],
        //   onExpansionChanged: (expand) {
        //     setState(() {
        //       expand ? isExpand2 == false : isExpand2 == true;
        //     });
        //   },
        // ),
        child: ExpansionPanelList(
          expansionCallback: (i, isopen) {
            setState(() {
              isOpen?[i] = !isopen;
            });
          },
          children: [
            ExpansionPanel(
                isExpanded: isOpen![0],
                // canTapOnHeader: true,
                headerBuilder: (context, isexpanded) {
                  return ListTile(
                      title: Text(
                    'Meal',
                  ));
                },
                body: Column(
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
                        prefix: Icons.calendar_today,
                        keyboard: TextInputType.datetime,
                        hint: 'Date',
                        ontap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.parse('2022-05-09'))
                              .then((value) {
                            dateController.text =
                                DateFormat.yMMMd().format(value!);
                          });
                        },
                        fieldController: dateController),
                    SizedBox(
                      height: 10,
                    ),
                    DefaultFormField(
                        prefix: Icons.watch_later_outlined,
                        keyboard: TextInputType.datetime,
                        ontap: () {
                          print('time taped');
                          showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.input)
                              .then((value) {
                            if (value != null) {
                              timeController.text =
                                  value.format(context).toString();
                            }
                          });
                        },
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

                              Navigator.pop(context);
                            },
                            child: Text('Save'))
                      ],
                    ),
                  ],
                )),
            ExpansionPanel(
              isExpanded: isOpen![1],
              headerBuilder: (context, isexpanded) {
                return ListTile(
                  title: Row(
                    children: [Text('Stress : '), getStressLevel(sliderValue)],
                  ),
                );
              },
              body: Slider.adaptive(
                value: sliderValue,
                onChanged: (newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
                min: 0,
                max: 100,
                divisions: 10,
                label: "$sliderValue%",
              ),
            )
          ],
        ),

        // ExpansionTile(
        //   title: Row(
        //     children: [Text('Stress : '), getStressLevel(sliderValue)],
        //   ),
        //   onExpansionChanged: (expand) {
        //     setState(() {

        //     });

        //   },

        //   children: [
        //     Slider.adaptive(
        //       value: sliderValue,
        //       onChanged: (newValue) {
        //         setState(() {
        //           sliderValue = newValue;
        //         });
        //       },
        //       min: 0,
        //       max: 100,
        //       divisions: 10,
        //       label: "$sliderValue%",
        //     ),
        //   ],
        // ),
        // ExpansionTile(
        //   title: Text('Symptoms'),
        // )
        // ],
        // ),
      ),
    );
  }
}

Widget getStressLevel(double value) {
  if (value >= 0 && value < 20) {
    return Text(
      'low',
      style: TextStyle(color: Colors.green),
    );
  } else if (value >= 20 && value < 40) {
    return Text('medium', style: TextStyle(color: Colors.orange));
  } else if (value >= 40 && value < 60) {
    return Text('high', style: TextStyle(color: Colors.redAccent));
  } else if (value >= 60 && value < 80) {
    return Text('vary high', style: TextStyle(color: Colors.red));
  } else {
    return Text('Extreme', style: TextStyle(color: Colors.red));
  }
}
