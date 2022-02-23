import 'package:ibs_food_map/core/resources/images/images_path.dart';
import 'package:ibs_food_map/features/home/presentation/pages/page_view_model/view_model.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModelInputData> buildStep1PageViewModelsData() {
  var firstPageViewModelData = PageViewModelInputData(
      title: 'Confirm your IBS diagnosis',
      body:
          'You are here because you have been diagnosed with IBS. if you have not been diagnosed, but suspect you have IBS please see your doctor or health care provider.',
      imagePath: ImagesPathts.diagnosis);
  var secondPageViewModelData = PageViewModelInputData(
      title: 'Step1 & low FODMAP diet',
      body:
          'The FODMAD diet involves swapping high FODMAP foods in your diet with similar low FODMAP alternatives to help reduce symptoms of IBS.',
      imagePath: ImagesPathts.lowFODMAPS);
  var thirdPageViewModelData = PageViewModelInputData(
      title: 'What to eat?',
      body:
          'Check FODMAP content of your foods in (Food Guide). the traffic light system allow you to see which foods you are able to eat. ',
      imagePath: ImagesPathts.disaccharides);
  var trafficLightPageViewModelData = PageViewModelInputData(
      title: 'Traffic light system',
      body:
          'Green foods are low in FODMAPs and should be well tolerated. \n Amber foods are moderate and should be limited. \n Red foods are high and should be avoided.',
      imagePath: ImagesPathts.monosaccharides);
  var servingSizesPageViewModelData = PageViewModelInputData(
      title: 'Serving Sizes',
      body:
          'Using the (Food Guide) to ensure you are consuming the right serving sizes to maintain low FODMAP diet.\n some foods become amber or red if you consume too much. \n There are also green serving of high foods.',
      imagePath: ImagesPathts.polyols);
  var feelBetterPageViewModelData = PageViewModelInputData(
      title: 'When you feel better',
      body:
          'After following Step 1 for 2-6 weeks and your symptoms are under control, you are ready to move to Step 2 - FODMAP reintroduction.',
      imagePath: ImagesPathts.healthy);

  return [
    firstPageViewModelData,
    secondPageViewModelData,
    thirdPageViewModelData,
    trafficLightPageViewModelData,
    servingSizesPageViewModelData,
    feelBetterPageViewModelData
  ];
}

List<PageViewModel> getStep1PagesViewModels() {
  List<PageViewModel> step1pageViewModels = [];
  buildStep1PageViewModelsData().forEach((element) {
    step1pageViewModels
        .add(getPageViewModel(element.imagePath, element.title, element.body));
  });
  return step1pageViewModels;
}
