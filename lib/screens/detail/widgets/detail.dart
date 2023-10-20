import 'package:flutter/material.dart';
import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/detail_silver_delegate.dart';
import 'package:uas_mobile/screens/detail/widgets/game_info.dart';

class DetailPage extends StatelessWidget {
  final Game game;
  const DetailPage(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
                game: game, expandedHeight: 360, roundedContainerHeight: 30),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      ),
    );
  }
}
