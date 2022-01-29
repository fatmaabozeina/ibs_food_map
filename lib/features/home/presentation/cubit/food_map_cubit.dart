import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibs_food_map/data_model.dart';
import 'foodmap_state.dart';

class FoodMapCubit extends Cubit<FoodMapStates> {
  FoodMapCubit() : super(FoodMapInitialState());

  FoodMapCubit get(context) => BlocProvider.of(context);
}
