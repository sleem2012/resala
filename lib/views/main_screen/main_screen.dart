import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/views/home/home_screen.dart';

import '../../logic/main_view/main_view_bloc.dart';
import '../../shared/theme/colors.dart';

import '../widgets/appbar.dart';

class MainNavPages extends StatelessWidget {
  const MainNavPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainViewBloc(),
      child: BlocBuilder<MainViewBloc, MainViewState>(
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: const KAppBar(title: 'الرئيسية'),
            body: PageView(
              controller: MainViewBloc.of(context).pageCtrl,
              physics: const NeverScrollableScrollPhysics(),

              children: const [
                HomeScreen(),
              ],
            ),
            bottomNavigationBar: AnimatedBottomNavigationBar(
              height: 50,
              icons: MainViewBloc.of(context).navItems,
              activeIndex: state.index,
              shadow: Shadow(color: KColors.of(context).shadow, blurRadius: 10),
              backgroundColor: KColors.of(context).background,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.softEdge,
              onTap: MainViewBloc.of(context).navTaped,
              activeColor: KColors.of(context).primary,
              inactiveColor: KColors.of(context).accentColor,
            ),
          );
        },
      ),
    );
  }
}
