import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:introduction_screen/introduction_screen.dart';
// class name extends StatelessWidget {
//   const name({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  PageViewModel(
//             image: Stack(
//               alignment: Alignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 130,
//                   backgroundColor: Color(0xFFD1EAA3),
//                 ),
//                 Container(
//                   child: Image(
//                     height: 160,
//                     width: 160,
//                     image: AssetImage(ImagesPathts.fermentation),
//                   ),
//                 ),
//               ],
//             ),
//             decoration: PageDecoration(
//               titleTextStyle: TextStyle(
//                   color: Color(0xFF8B9A46),
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20),
//               bodyTextStyle: TextStyle(color: Color(0xFF184D47), fontSize: 15),
//               imageFlex: 2,
//               imageAlignment: Alignment.center,
//               bodyFlex: 1,
//             ),
//             title: 'Fermentable',
//             body:
//                 'Process through which gut bacteria ferment undigested carbohydrate to produce gases',
//           );
//   }

//   Widget PageViewModel({Stack image, decoration, String title, String body}) {}
// }
class PageViewModelInputData {
  late String title;
  late String body;
  late String imagePath;
  PageViewModelInputData(
      {required this.title, required this.body, required this.imagePath});
}

List<PageViewModelInputData> buildPageViewModelsData() {
  var firstPageViewModelData = PageViewModelInputData(
      title: 'Fermentable',
      body:
          'Process through which gut bacteria ferment undigested carbohydrate to produce gases',
      imagePath: ImagesPathts.fermentation);
  var secondPageViewModelData = PageViewModelInputData(
      title: 'Oligosaccharides',
      body:
          'Fructans & GOS - found in foods as wheat,rye,onions,garlic and legumes/pulses',
      imagePath: ImagesPathts.oligosaccharides);
  var thirdPageViewModelData = PageViewModelInputData(
      title: 'Disaccharides',
      body:
          'Lactose - found in dairy products like milk, soft cheeses and yogurts',
      imagePath: ImagesPathts.disaccharides);
  var forthPageViewModelData = PageViewModelInputData(
      title: 'Monosaccharides',
      body: 'Fructose - found in honey, apple and high fructose corn syrups',
      imagePath: ImagesPathts.monosaccharides);
  var fifthPageViewModelData = PageViewModelInputData(
      title: 'And polyols',
      body:
          'Sorbitol & Mannitol - found in some fruits and vegetables and used as artificial sweeteners',
      imagePath: ImagesPathts.polyols);

  return [
    firstPageViewModelData,
    secondPageViewModelData,
    thirdPageViewModelData,
    forthPageViewModelData,
    fifthPageViewModelData
  ];
}

List<PageViewModel> getPagesViewModels() {
  List<PageViewModel> pageViewModels = [];
  buildPageViewModelsData().forEach((element) {
    pageViewModels
        .add(getPageViewModel(element.imagePath, element.title, element.body));
  });
  return pageViewModels;
}

PageViewModel getPageViewModel(String image, String title, String body) {
  return PageViewModel(
    image: Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 130,
          backgroundColor: Color(0xFFD1EAA3),
        ),
        Container(
          child: Image(
            height: 160,
            width: 160,
            image: AssetImage(image),
          ),
        ),
      ],
    ),
    decoration: PageDecoration(
      titleTextStyle: TextStyle(
          color: Color(0xFF8B9A46), fontWeight: FontWeight.bold, fontSize: 20),
      bodyTextStyle: TextStyle(color: Color(0xFF184D47), fontSize: 15),
      imageFlex: 2,
      imageAlignment: Alignment.center,
      bodyFlex: 1,
    ),
    title: title,
    body: body,
  );
}
