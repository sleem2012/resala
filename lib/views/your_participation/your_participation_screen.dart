import 'package:flutter/material.dart';
import 'package:resala/views/home/widget/cards_list.dart';
import 'package:resala/views/widgets/horizintal_card.dart';

class YourParticipationScreen extends StatelessWidget {
  const YourParticipationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(

      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 100)),

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
