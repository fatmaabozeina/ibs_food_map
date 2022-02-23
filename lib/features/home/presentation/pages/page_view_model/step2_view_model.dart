import 'package:flutter/material.dart';
import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModelInputData> buildStep2PageViewModelsData() {
  var firstPageViewModelData = PageViewModelInputData(
      title: 'Reintroduction',
      body:
          'When your symptoms are stable,reintroduce each FODMAP back into your diet. one-by-one,to identify which FODMAPs you tolerate and which trigger symptoms. Maintain a low FODMAP diet during this step.',
      imagePath: ImagesPathts.reIntroduction);
  var secondPageViewModelData = PageViewModelInputData(
      title: 'Why introduce',
      body:
          'Reintroduction helps ensure that your diet is only as strict as it needs to be to control your smyptoms. it also helps you to maintain a varied diet with a good intake of dietary fibre.',
      imagePath: ImagesPathts.whyReintroduce);
  var thirdPageViewModelData = PageViewModelInputData(
      title: 'What to expect',
      body:
          'Symptoms may return during this step, however,you can continue if you are manageable. some symptoms(eg. wind/gas and some bloating) are normal signs of health gut.',
      imagePath: ImagesPathts.whatToExpect);
  var forthPageViewModelData = PageViewModelInputData(
      title: 'Using the (in app) diary',
      body:
          'Select the reintroduction icon in the diary to help you reintroduce FODMAPs back into your diet. Only reintroduce one FODMAP group at a time.',
      imagePath: ImagesPathts.monosaccharides);
  var fifthPageViewModelData = PageViewModelInputData(
      title: 'Reintroduce FODMAPs',
      body:
          'Choose the FODMAP you would like to reintroduce, the food source of that FODMAP and the quantity from the list.\nincrease your serving sizes of that food over 3 days only one food needs to be chosen from each group. maintain a low FODMAP diet during this step.',
      imagePath: ImagesPathts.polyols);
  var sixthPageViewModelData = PageViewModelInputData(
      title: '3 day process',
      body:
          'Follow the serving suggestions in the app and begin the first day with small portion of your chosen food. increase that amount the next day, then eat afull serving on the third day.',
      imagePath: ImagesPathts.polyols);
  var seventhPageViewModelData = PageViewModelInputData(
      title: 'REcord your symptoms',
      body:
          'Record your reintroduced food and symptoms to see which foods you can tolerate. reintroduce foods early in the day to get the clearest results.',
      imagePath: ImagesPathts.polyols);
  var eighthPageViewModelData = PageViewModelInputData(
      title: 'A good responce',
      body:
          'If the food did not trigger symptoms then it can be reintroduced back into your diet during Step 3 - FODMAP personalization.wait at least 1 day before starting your next FODMAP reintrodution.',
      imagePath: ImagesPathts.polyols);
  var ninthPageViewModelData = PageViewModelInputData(
      title: 'A poor responce',
      body:
          'If the food triggered symptoms then stop reintroduction of this FODMAP group - you do not tolerate this FODMAP at this time. wait for symptoms to improve before introducing the next FODMAP.',
      imagePath: ImagesPathts.polyols);
  var tenthPageViewModelData = PageViewModelInputData(
      title: 'Repeat the process',
      body:
          'Follow the 3 day process with all the FODMAP groups(lactose, sorbitol,mannitol,fructose,GOS,fructan,fructose and sorbitol etc).your FODMAP trained dietitian can help.',
      imagePath: ImagesPathts.polyols);
  var eleventhPageViewModelData = PageViewModelInputData(
      title: 'What happens next',
      body:
          'When you have completed step 2-FODMAP reintroduction, you are ready to move to step 3- FODMAP personalization.',
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
    ninthPageViewModelData,
    tenthPageViewModelData,
    eleventhPageViewModelData
  ];
}

List<PageViewModel> getStep2PagesViewModels() {
  List<PageViewModel> step2pageViewModels = [];
  buildStep2PageViewModelsData().forEach((element) {
    step2pageViewModels
        .add(getPageViewModel(element.imagePath, element.title, element.body));
  });
  return step2pageViewModels;
}
