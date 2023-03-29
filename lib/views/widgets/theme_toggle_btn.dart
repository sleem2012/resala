import 'package:flutter/material.dart';
import 'package:resala/logic/core/theme/theme_cubit.dart';

import '../../shared/theme/colors.dart';

class ThemeToggleBtn extends StatelessWidget {
  const ThemeToggleBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Theme.of(context).brightness == Brightness.light ? Icons.nights_stay_rounded : Icons.wb_sunny_rounded,
        color: KColors.of(context).reBackground,
      ),
      onPressed: ThemeBloc.of(context).updateThemeMode,
    );
  }
}
