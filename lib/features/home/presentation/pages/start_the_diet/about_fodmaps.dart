import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';

import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/about_FODMAPs_view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

class AboutFODMAPs extends StatefulWidget {
  AboutFODMAPs({Key? key}) : super(key: key);

  @override
  State<AboutFODMAPs> createState() => _AboutFODMAPsState();
}

class _AboutFODMAPsState extends State<AboutFODMAPs> {
  // List<FODMAPsDefinition> FODMAPs = [
  //   FODMAPsDefinition(
  //     letterLabel: 'F',
  //     label: 'ermentable',
  //   ),
  //   FODMAPsDefinition(
  //     letterLabel: 'O',
  //     label: 'ligosaccharides',
  //   ),
  //   FODMAPsDefinition(
  //     letterLabel: 'D',
  //     label: 'isaccharides',
  //   ),
  //   FODMAPsDefinition(
  //     letterLabel: 'M',
  //     label: 'onosaccharides',
  //   ),
  //   FODMAPsDefinition(
  //     letterLabel: 'A',
  //     label: 'nd',
  //   ),
  //   FODMAPsDefinition(
  //     letterLabel: 'P',
  //     label: 'olyols',
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFFF5F5C6),
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
        // globalBackgroundColor: Color(0xFFF5F5C6),
        globalBackgroundColor: Colors.white54,
        dotsDecorator: const DotsDecorator(activeColor: Color(0xFF8B9A46)),
        pages: getAboutFODMAPsPagesViewModels(),
        //     [
        //   PageViewModel(
        //     image: Stack(
        //       alignment: Alignment.center,
        //       children: [
        //         CircleAvatar(radius: 130, backgroundColor: Color(0xFFD1EAA3)),
        //         ListView.separated(
        //             padding: EdgeInsets.only(left: 100, top: 20),
        //             itemBuilder: (context, index) => AboutFODMAPsWidget(
        //                   letterLabel: FODMAPs[index].letterLabel,
        //                   label: FODMAPs[index].label,
        //                 ),
        //             separatorBuilder: (context, index) => SizedBox(
        //                   height: 8,
        //                 ),
        //             itemCount: FODMAPs.length)
        //       ],
        //     ),
        //     decoration: PageDecoration(
        //       titleTextStyle: TextStyle(
        //           color: Color(0xFF8B9A46),
        //           fontWeight: FontWeight.bold,
        //           fontSize: 20),
        //       bodyTextStyle: TextStyle(color: Color(0xFF184D47), fontSize: 15),
        //       imageAlignment: Alignment.center,
        //       imageFlex: 2,
        //       bodyFlex: 1,
        //     ),
        //     title: 'What are FODMAPs',
        //     body:
        //         'FODMAPs are found naturally in many foods. they are a collection of short-chain carbohydrates(sugars) that are not absorbed properly in the gut, which can trigger symptoms in people with IBS',
        //   ),
        //   getPageViewModel(ImagesPathts.fermentation, 'Fermentable',
        //       'Process through which gut bacteria ferment undigested carbohydrate to produce gases'),
        //   getPageViewModel(ImagesPathts.oligosaccharides, 'Oligosaccharides',
        //       'Fructans & GOS - found in foods as wheat,rye,onions,garlic and legumes/pulses'),
        //   getPageViewModel(ImagesPathts.fermentation, 'Disaccharides',
        //       'Lactose - found in dairy products like milk, soft cheeses and yogurts'),
        //   getPageViewModel(ImagesPathts.fermentation, 'Monosacchardies',
        //       'Fructose - found in honey, apple and high fructose corn syrups'),
        //   getPageViewModel(ImagesPathts.fermentation, 'And Polyols',
        //       'Sorbitol & Mannitol - found in some fruits and vegetables and used as artificial sweeteners'),
        // ],
        showDoneButton: false,
        skip: const Text('skip'),
        showNextButton: false,
      ),
    );
  }
}

// class FODMAPsDefinition {
//   String letterLabel;
//   String label;
//   FODMAPsDefinition({required this.label, required this.letterLabel});
// }

// class AboutFODMAPsWidget extends StatelessWidget {
//   final letterLabel;
//   final label;
//   AboutFODMAPsWidget({this.letterLabel, this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(7),
//                     bottomLeft: Radius.circular(7))),
//             width: 40,
//             height: 40,
//             alignment: Alignment.center,
//             child: Text(
//               letterLabel,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(7),
//                     bottomRight: Radius.circular(7))),
//             height: 40,
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             alignment: Alignment.center,
//             child: Text(
//               label,
//               style: TextStyle(fontSize: 18, color: Color(0xFF184D47)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
