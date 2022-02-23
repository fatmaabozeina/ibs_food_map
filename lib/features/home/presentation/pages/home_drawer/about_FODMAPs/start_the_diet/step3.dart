import 'package:flutter/material.dart';

import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/page_view_model/step3_view_model.dart';

import 'package:introduction_screen/introduction_screen.dart';

class Step3 extends StatefulWidget {
  Step3({Key? key}) : super(key: key);

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
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
        pages: getStep3PagesViewModels(),
        showDoneButton: false,
        skip: const Text('skip'),
        showNextButton: false,
      ),
    );
  }
}
