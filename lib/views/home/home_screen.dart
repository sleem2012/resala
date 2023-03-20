import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/home/widget/slider_img.dart';

import '../human_cases/human_cases.dart';
import '../widgets/horizintal_card.dart';
import 'widget/cards_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SliderImage(img: List.generate(3, (index) => dummyAssetImg)),
        ),
        const SliverToBoxAdapter(
          child: HumanCasesList(),
        ),
         SliverToBoxAdapter(child: Column(
           children: [
             const Divider(color: Colors.grey, height: 3),
             SizedBox(height: KHelper.listPadding)
           ],
         )),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return HorizontalCard(model: CardsList.cards[index]);
          }, childCount: CardsList.cards.length),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 100))
      ],
    );
  }
}
