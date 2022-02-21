import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionInitial());
}
