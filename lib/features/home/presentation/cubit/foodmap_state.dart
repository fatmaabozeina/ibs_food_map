abstract class FoodMapStates {}

class FoodMapInitialState extends FoodMapStates {}

class GetFruitsDataSuccefulState extends FoodMapStates {}

class GetFruitsDataErrorState extends FoodMapStates {
  GetFruitsDataErrorState(error);
}
