import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/step1_view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Step1 extends StatefulWidget {
  Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.clear),
            color: Color(0xFF8B9A46),
          )
        ],
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white54,
        dotsDecorator: const DotsDecorator(activeColor: Color(0xFF8B9A46)),
        pages: getStep1PagesViewModels(),
        showDoneButton: false,
        skip: const Text('skip'),
        showNextButton: false,
      ),
    );
  }
}
