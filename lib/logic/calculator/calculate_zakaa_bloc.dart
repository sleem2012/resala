import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/shared/cache/storage.dart';

final num goldPrice = KStorage.i.getSetting?.data?.info?.goldPrice ?? 0.0;

class CalculateZakaaBloc extends Cubit<double> {
  CalculateZakaaBloc(super.initialState);

  static CalculateZakaaBloc of(BuildContext context) {
    return BlocProvider.of<CalculateZakaaBloc>(context);
  }

  TextEditingController myMoneyController = TextEditingController(text: '0');
  TextEditingController ashmController = TextEditingController(text: '0');
  TextEditingController sanadatController = TextEditingController(text: '0');
  TextEditingController arpahController = TextEditingController(text: '0');
  TextEditingController eighteenGoldController =
      TextEditingController(text: '0');
  TextEditingController twenyOneGoldController =
      TextEditingController(text: '0');
  TextEditingController twenyFourGoldController =
      TextEditingController(text: '0');
  TextEditingController ownRealStateController =
      TextEditingController(text: '0');

  double moneyResult = 0;
  double propertiesResult = 0;
  double realEstateResult = 0;
  double goldResult = 0;
  double totalResult = 0;
  num lessZakaa = (85 * (goldPrice));
  num totalOwn = 0;

  bool get canDonate {
    if (totalOwn > lessZakaa) {
      return true;
    }
    return false;
  }

  calculateZakaa() {
    moneyResult = double.parse(myMoneyController.text);
    realEstateResult = double.parse(ownRealStateController.text);
    propertiesResult = (double.parse(ashmController.text) +
        double.parse(sanadatController.text) +
        double.parse(arpahController.text));
    goldResult = (double.parse(twenyFourGoldController.text) * goldPrice) +
        (double.parse(eighteenGoldController.text) * goldPrice * .75) +
        (double.parse(twenyOneGoldController.text) * goldPrice * .875);
    totalOwn = moneyResult + realEstateResult + propertiesResult + goldResult;

// print(totalOwn);
    totalResult =
        (moneyResult + realEstateResult + propertiesResult + goldResult) * .025;
    emit(state);
  }
}
