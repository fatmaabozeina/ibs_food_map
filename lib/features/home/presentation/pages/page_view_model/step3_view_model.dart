import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModelInputData> buildStep3PageViewModelsData() {
  var firstPageViewModelData = PageViewModelInputData(
      title: 'Personalization',
      body:
          'Now that you have completed Step 2-FODMAP reintroduction, you will know which FODMAPs you can tolerate and which you are more sensitive to.',
      imagePath: ImagesPathts.fermentation);
  var secondPageViewModelData = PageViewModelInputData(
      title: 'Finding balance',
      body:
          'The goal of Step 3 is to fine the balance between a reintroduced better tolerated FODMAP rich foods you enjoy while avoiding or limiting the high FODMAP foods you do not tolerate.',
      imagePath: ImagesPathts.oligosaccharides);
  var thirdPageViewModelData = PageViewModelInputData(
      title: 'Using FODMAP filters',
      body:
          'First, set your FOLDMAP filters to your tolerance levels. only foods and serving sizes that you tolerate well will now be shown in the app, you can eat these foods freely.',
      imagePath: ImagesPathts.disaccharides);
  var forthPageViewModelData = PageViewModelInputData(
      title: 'Monitor your symptoms',
      body:
          'Bring back into your diet the food you tolerated well during reintroduction.\n Continue to use the diary to monitor your symptoms.',
      imagePath: ImagesPathts.monosaccharides);
  var fifthPageViewModelData = PageViewModelInputData(
      title: 'Modify serving sizes',
      body:
          'In most cases, you will be able to reintroduce many high FODMAP foods but may not eat these as aften or in the same quantities as you used to.',
      imagePath: ImagesPathts.polyols);
  var sixthPageViewModelData = PageViewModelInputData(
      title: 'Re_test your tolerance',
      body:
          'Tolerance to FODMAPs can change over time, so if there are foods you did not tolerate intially, try these again in a few months.',
      imagePath: ImagesPathts.polyols);
  var seventhPageViewModelData = PageViewModelInputData(
      title: 'Dietitian can help',
      body:
          'Adietitian can help you work out your own personalized FODMAP diet .',
      imagePath: ImagesPathts.polyols);
  var eighthPageViewModelData = PageViewModelInputData(
      title: 'Get back to living your life',
      body:
          'Always stay tuned for regular app updates of newly FODMAP tested foods, drinks and products.',
      imagePath: ImagesPathts.polyols);

  return [
    firstPageViewModelData,
    secondPageViewModelData,
    thirdPageViewModelData,
    forthPageViewModelData,
    fifthPageViewModelData,
    sixthPageViewModelData,
    seventhPageViewModelData,
    eighthPageViewModelData,
  ];
}

List<PageViewModel> getStep3PagesViewModels() {
  List<PageViewModel> step3pageViewModels = [];
  buildStep3PageViewModelsData().forEach((element) {
    step3pageViewModels
        .add(getPageViewModel(element.imagePath, element.title, element.body));
  });
  return step3pageViewModels;
}
