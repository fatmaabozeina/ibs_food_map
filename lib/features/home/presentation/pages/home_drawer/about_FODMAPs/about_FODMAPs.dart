import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/start_the_diet/FODMAPs_IBS.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/start_the_diet/about_fodmaps.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/start_the_diet/step1.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/start_the_diet/step2.dart';
import 'package:ibs_food_map/features/home/presentation/pages/home_drawer/about_FODMAPs/start_the_diet/step3.dart';

import 'package:ibs_food_map/features/home/presentation/pages/home_guide/FODMAPs_guide.dart';

import 'package:ibs_food_map/features/home/presentation/pages/boarding_screen/boarding_screen.dart';

import 'package:ibs_food_map/features/home/presentation/widgets/widgets.dart';

class How2StartFODMAPs extends StatefulWidget {
  How2StartFODMAPs({Key? key}) : super(key: key);

  @override
  State<How2StartFODMAPs> createState() => _How2StartFODMAPsState();
}

class _How2StartFODMAPsState extends State<How2StartFODMAPs> {
  List<Widget> widgets = [
    AboutFODMAPs(),
    FODMAPsAndIBS(),
    Step1(),
    Step2(),
    Step3()
  ];
  List<AboutCategory> aboutCategoryList = [
    AboutCategory(
      label: 'About FODMAPs',
      image: ImagesPathts.aboutFODMAPs,
    ),
    AboutCategory(
      label: 'FODMAPs and IBS',
      image: ImagesPathts.iBS,
    ),
    AboutCategory(
      label: 'Step 1: Low FODMAP Diet',
      image: ImagesPathts.lowFODMAPS,
    ),
    AboutCategory(
      label: 'Step 2: Reintroduction',
      image: ImagesPathts.reIntroduction,
    ),
    AboutCategory(
      label: 'Step 3: Personalization',
      image: ImagesPathts.personalization,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xFFDBE9B7),
          // backgroundColor: Color(0xFFCEE5D0),
          // backgroundColor: Color(0xFFC6D57E),
          forceElevated: true,
          elevation: 5,
          title: Text(
            'How To Start The Diet',
            style: TextStyle(color: Color(0xFF127C56)),
          ),
          floating: true,
          // centerTitle: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                    onTap: () {
                      navigateTo(context, widgets[index]);
                    },
                    child: Container(
                      color: Color(0xFFDBE9B7),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                aboutCategoryList[index].image,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            radius: 40,
                            backgroundColor: Colors.white,
                            // backgroundImage: AssetImage(

                            // ),
                          ),
                          Text(
                            aboutCategoryList[index].label,
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF184D47)),
                          ),
                          Container(
                            height: 2,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
              childCount: aboutCategoryList.length),
        )
      ],
    ));
  }
}

class AboutCategory {
  var image;
  var label;

  AboutCategory({required this.label, required this.image});
}
