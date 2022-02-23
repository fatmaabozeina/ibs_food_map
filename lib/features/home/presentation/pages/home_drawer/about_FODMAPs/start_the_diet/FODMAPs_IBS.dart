import 'package:flutter/material.dart';

import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/page_view_model/FODMAPs_IBS_viewmodel.dart';

import 'package:introduction_screen/introduction_screen.dart';

class FODMAPsAndIBS extends StatefulWidget {
  const FODMAPsAndIBS({Key? key}) : super(key: key);

  @override
  State<FODMAPsAndIBS> createState() => _FODMAPsAndIBSState();
}

class _FODMAPsAndIBSState extends State<FODMAPsAndIBS> {
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
        pages: getFODMAPsAndIBSPagesViewModels(),
        showDoneButton: false,
        skip: const Text('skip'),
        showNextButton: false,
      ),
    );
  }
}
