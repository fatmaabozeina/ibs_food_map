import 'package:flutter/material.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/step2_view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Step2 extends StatefulWidget {
  Step2({Key? key}) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
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
        pages: getStep2PagesViewModels(),
        showDoneButton: false,
        skip: const Text('skip'),
        showNextButton: false,
      ),
    );
  }
}
