import 'package:flutter/material.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/text_theme.dart';
import 'lalng_switch.dart';
import 'theme_toggle_btn.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Text(Tr.get.appTitle),
        centerTitle: true,
        titleTextStyle: KTextStyle.of(context).appBar,
        leading: const ThemeToggleBtn(),
        actions: const [
          LangSwitch(),
        ],
      ),
    );
  }
}
