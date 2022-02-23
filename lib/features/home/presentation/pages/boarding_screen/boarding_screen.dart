import 'package:flutter/material.dart';

import 'package:ibs_food_map/core/resources/images/images_path.dart';

import 'package:ibs_food_map/features/home/presentation/pages/home_guide/FODMAPs_guide.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class BoardingScreen extends StatefulWidget {
  BoardingScreen({Key? key}) : super(key: key);

  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Image(
              fit: BoxFit.fill,
              image: AssetImage(
                ImagesPathts.onBoardingImage,
              )),
          Center(
            child: Container(
              height: 280,
              width: 250,
              child: IntroductionScreen(
                globalBackgroundColor: Colors.white70,
                dotsDecorator:
                    const DotsDecorator(activeColor: Color(0xFF8B9A46)),
                pages: [
                  PageViewModel(
                    title: 'reveal your pain',
                    body: 'Having nutritionally checked food for no more pain ',
                  ),
                  PageViewModel(
                    footer: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF519259)),
                      ),
                      child: Text('get start'),
                      onPressed: () {
                        navigateTo(context, FODMAPsGuide());
                      },
                    ),
                    title: 'reveal your pain',
                    body: 'Having nutritionally checked food for no more pain ',
                  ),
                ],
                showDoneButton: false,
                // onDone: () {
                //   // Navigator.push(
                //   //     context, MaterialPageRoute(builder: (context) => IBSFoodMap()));

                skip: const Text('skip'),
                showNextButton: false,
                // next: const Text('next'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
