import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/vertical_card.dart';

class DonationFacesScreen extends StatelessWidget {
  const DonationFacesScreen({Key? key}) : super(key: key);

  // final CardItemsModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: "أوجه التبرع"),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal:KHelper.hPadding,vertical: 10),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return const VerticalCard(
            key: ValueKey("7"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: KHelper.listPadding,
          );
        },
        itemCount: 6,
      ),
    );
  }
}
