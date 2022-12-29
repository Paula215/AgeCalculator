import 'package:bloc/bloc.dart';

part 'age_calculator_state.dart';

class AgeCalculatorCubit extends Cubit<AgeCalculatorInitial> {
  AgeCalculatorCubit() : super(AgeCalculatorInitial(stageOfLife: "life"));

  void updateAgeVal(int ageval) {
    emit(
      AgeCalculatorInitial(stageOfLife: getStage(ageval)),
    );
  }

  String getStage(int ageval) {
    if (ageval == 0 || ageval == 1) {
      return "Bebe";
    } else if (ageval >= 2 && ageval <= 4) {
      return "Infante";
    } else if (ageval >= 5 && ageval <= 12) {
      return "Niño";
    } else if (ageval >= 13 && ageval <= 19) {
      return "Adolecente";
    } else if (ageval >= 20 && ageval <= 39) {
      return "Adulto";
    } else if (ageval >= 40 && ageval <= 59) {
      return "Adulto de mediana edad";
    } else {
      return "Anciano";
    }
  }
}
