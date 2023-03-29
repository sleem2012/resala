import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/my_participation/my_participation_bloc.dart';
import 'package:resala/logic/my_participation/my_participation_state.dart';
import 'package:resala/views/widgets/horizintal_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';

class MyParticipationScreen extends StatelessWidget {
  const MyParticipationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.myParticipation..get(),
      child: BlocBuilder<MyParticipationBloc, MyParticipationState>(
        builder: (context, state) {
          final my = MyParticipationBloc.of(context).model;
          return KRequestOverlay(
            isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
            error: state.whenOrNull(error: (error) => error),
            onTryAgain: state.whenOrNull(error: (error) => MyParticipationBloc.of(context).get),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 100)),
                SliverList(
                  delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                    return HorizontalCard(model: my?.data?[index], onPressed: () {  },);
                  }, childCount: my?.data?.length),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 100))
              ],
            ),
          );
        },
      ),
    );
  }
}
