import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/widgets/multi_select_dialog/multi_select_view.dart';

class KDropdownBtn<T> extends StatelessWidget {
  final String hint;
  final T? value;
  final Function(T?) onChanged;
  final String? Function(T?)? validator;
  final List<MultiSelectorItem<T>> items;
  final SelectorViewType? type;
  final String? error;



  const KDropdownBtn({
    Key? key,
    required this.hint,
    this.value,
    required this.onChanged,
    required this.items,
    this.validator, this.type, this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSelector.single<T>(
        items: items,
        title: hint,
        onChanged: onChanged,
        validator: validator,

        type:SelectorViewType.sheet ,
        popupDecoration: KHelper.of(context).elevatedBox,
        btnDecoration: KHelper.of(context).elevatedBox,
        error: error,


    );
  }
}

class KDropdownBtnMulti<T> extends StatelessWidget {
  final String hint;
  final T? value;
  final String? Function(List<T>? values)? validator;
  final  List<MultiSelectorItem<T>> items;
  final  Function(List<T> values) onChanged;
  final SelectorViewType? type;
  final String? error;
  const  KDropdownBtnMulti({
    Key? key,
    required this.hint,
    this.value,
    required this.onChanged,
    required this.items,
    this.validator, this.type, this.error,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSelector.multi<T>(
        items: items,
        title: hint,
        onChanged: onChanged,
        validator: validator,
        type:type ,
        popupDecoration: KHelper.of(context).elevatedBox,
        btnDecoration: KHelper.of(context).elevatedBox,
        error: error
    );
  }
}
