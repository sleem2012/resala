import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculateZakaaBloc extends Cubit<double> {
  CalculateZakaaBloc(super.initialState);

  static CalculateZakaaBloc of(BuildContext context) {
    return BlocProvider.of<CalculateZakaaBloc>(context);
  }

  TextEditingController myMoneyController = TextEditingController(text: '0');
  TextEditingController ashmController = TextEditingController(text: '0');
  TextEditingController sanadatController = TextEditingController(text: '0');
  TextEditingController arpahController = TextEditingController(text: '0');
  TextEditingController eighteenGoldController = TextEditingController(text: '0');
  TextEditingController twenyOneGoldController = TextEditingController(text: '0');
  TextEditingController ownRealStateController = TextEditingController(text: '0');

  double moneyResult = 0;
  double propertiesResult = 0;
  double realEstateResult = 0;
  double goldResult = 0;
  double totalResult = 0;

  calculateZakaa() {
    moneyResult = double.parse(myMoneyController.text) * 0.025;
    realEstateResult = double.parse(ownRealStateController.text) * 0.025;
    propertiesResult = (double.parse(ashmController.text) + double.parse(sanadatController.text) + double.parse(arpahController.text)) * 0.025;
    totalResult = (moneyResult) + (realEstateResult) + (propertiesResult);
    emit(state);
  }
}
