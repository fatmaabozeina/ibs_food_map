import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/data_model.dart';
import 'package:ibs_food_map/dio_helper.dart';
import 'package:ibs_food_map/features/home/presentation/pages/food_map.dart';
import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<A>? theData = [];
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
              height: 250,
              width: 250,
              child: IntroductionScreen(
                globalBackgroundColor: Colors.white70,
                // dotsDecorator: DotsDecorator(
                //     color: Colors.transparent, activeColor: Colors.transparent),
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
                      onPressed: () {},
                    ),
                    title: 'reveal your pain',
                    body: 'Having nutritionally checked food for no more pain ',
                  ),
                ],
                showDoneButton: false,
                onDone: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => IBSFoodMap()));
                  navigateTo(context, IBSFoodMap());
                  DioHelper.getData(myUrl: 'food').then((value) {
                    theData = value.a;
                    print(theData);
                  });
                },

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
