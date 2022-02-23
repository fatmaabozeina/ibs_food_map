import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModelInputData> buildFODMAPsAndIBSPageViewModelsData() {
  var firstPageViewModelData = PageViewModelInputData(
      title: 'FODMAPs & IBS symptoms',
      body:
          'FODMAPs are rabidly fermented by the bacteria living in your intestine to produce gases, also pull water into your gut, water and gases stretches and bloats your gut to trigger IBS symptoms.',
      imagePath: ImagesPathts.fermentation);
  var secondPageViewModelData = PageViewModelInputData(
      title: '3 in 4 people feel better',
      body:
          'the low FODMAPs diet works-research has shown that 3 in 4 peaple with IBS will feel better.',
      imagePath: ImagesPathts.group);
  var thirdPageViewModelData = PageViewModelInputData(
      title: 'There are 3 important steps to FODMAP diet',
      body: '',
      imagePath: ImagesPathts.steps);
  var step1PageViewModelData = PageViewModelInputData(
      title: 'Step 1 & Low FODMAP',
      body: '2-6 weeks /n Swap out high FODMAP foods for low',
      imagePath: ImagesPathts.lowFODMAPS);
  var step2PageViewModelData = PageViewModelInputData(
      title: 'Step 2 & FODMAP reintroduction',
      body:
          '8-12 weeks /n Reintroduce individual FOSMAPs to identify which you tolerate and which trigger symptoms.',
      imagePath: ImagesPathts.reIntroduction);
  var step3PageViewModelData = PageViewModelInputData(
      title: 'Step 3 & FODMAP personalization',
      body:
          'Include the FODMAPs that you tolerate back into your regular diet.',
      imagePath: ImagesPathts.personalization);
  var swapOutPageViewModelData = PageViewModelInputData(
      title: 'Swapping out FODMAPs',
      body:
          'The low FODMAP diet does not remove whole food groups from your diet. Foods that are high in FODMAPs are swapped for similar foods that are low in FODMAPs.',
      imagePath: ImagesPathts.lowFodmaps);
  var dietitianHelpViewModelData = PageViewModelInputData(
      title: 'Dietitian can help',
      body:
          'To work out which foods trigger your symptoms, how to reintroduce foods and tailor a diet to suit you-while looking after all your nutritional needs.',
      imagePath: ImagesPathts.drawerdietitian);

  return [
    firstPageViewModelData,
    secondPageViewModelData,
    thirdPageViewModelData,
    step1PageViewModelData,
    step2PageViewModelData,
    step3PageViewModelData,
    swapOutPageViewModelData,
    dietitianHelpViewModelData
  ];
}

List<PageViewModel> getFODMAPsAndIBSPagesViewModels() {
  List<PageViewModel> FODMAPsAndIBSpageViewModels = [];
  buildFODMAPsAndIBSPageViewModelsData().forEach((element) {
    FODMAPsAndIBSpageViewModels.add(
        getPageViewModel(element.imagePath, element.title, element.body));
  });
  return FODMAPsAndIBSpageViewModels;
}
