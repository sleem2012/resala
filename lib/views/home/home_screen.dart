import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/home/widget/slider_img.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
          child: SliderImage(img: KStorage.i.getSetting?.data?.sliders??[]),
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
            return HorizontalCard(model: CardsList.cards[index], onPressed: () {
              Get.to(() => CardsList.cards[index].screen );
            },);
          }, childCount: CardsList.cards.length),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: KButton(title: "Whatsapp", onPressed: () async{
                    String? url=KStorage.i.getSetting?.data?.info?.whats.toString();
                    await launchUrlString(url??'');
                  },isFlat: true,kFillColor: Color(0xff2ABA52),),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: KButton(title: "Facebook", onPressed: () async{
                    String? url=KStorage.i.getSetting?.data?.info?.facebook.toString();
                    await launchUrlString(url??'',);
                  },isFlat: true,kFillColor: KColors.of(context).accentColor,),
                ),
              ],
            ),
          ),
        ),
         const SliverToBoxAdapter(child: SizedBox(height: 100))
      ],
    );
  }
}
