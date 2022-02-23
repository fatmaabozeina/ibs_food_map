import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModelInputData> buildAboutFODMAPsPageViewModelsData() {
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

List<PageViewModel> getAboutFODMAPsPagesViewModels() {
  List<PageViewModel> AboutFODMAPspageViewModels = [];
  buildAboutFODMAPsPageViewModelsData().forEach((element) {
    AboutFODMAPspageViewModels.add(
        getPageViewModel(element.imagePath, element.title, element.body));
  });
  return AboutFODMAPspageViewModels;
}
