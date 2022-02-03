import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibs_food_map/data_model.dart';
import 'package:ibs_food_map/dio_helper.dart';
import 'foodmap_state.dart';

class FoodMapCubit extends Cubit<FoodMapStates> {
  FoodMapCubit() : super(FoodMapInitialState());

  FoodMapCubit get(context) => BlocProvider.of(context);
  List<Fruit>? fruitsList = [];

  void getFruits() async {
    DioHelper.getData(myUrl: 'food').then((value) {
      fruitsList = value.fruits;
      print(fruitsList);
      emit(GetFruitsDataSuccefulState());
    }).catchError((onError) {
      print('fruitDataError');
      emit(GetFruitsDataErrorState(onError));
    });
  }
}
