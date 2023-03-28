import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/vertical_card.dart';

class DonationFacesScreen extends StatelessWidget {
  const DonationFacesScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: "أوجه التبرع"),
      body: BlocProvider(
        create: (context) => Di.donationFaces..get(),
        child: BlocBuilder<DonationFacesBloc, DonationFacesState>(
          builder: (context, state) {
            final donationFaces=DonationFacesBloc.of(context).commonDataModel;

            return KRequestOverlay(
              isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
              error: state.whenOrNull(error: (error) => error),
              onTryAgain: state.whenOrNull(error: (error) => DonationFacesBloc.of(context).get),

              child: SizedBox(
                height: Get.height*.7,
                // width: 50,
                child: ListView.separated(
                  // shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 10),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return VerticalCard(
                      key: const ValueKey("7"),
                      model: donationFaces?.data?[index]??CommonData(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: KHelper.listPadding,
                    );
                  },
                  itemCount: donationFaces?.data?.length??0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
