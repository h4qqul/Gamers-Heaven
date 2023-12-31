import 'package:flutter/material.dart';
import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/game_desc.dart';
import 'package:uas_mobile/screens/detail/widgets/game_gallery.dart';
import 'package:uas_mobile/screens/detail/widgets/game_header.dart';
import 'package:uas_mobile/screens/detail/widgets/game_review.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameHeader(game),
          GameGallery(game),
          GameDesc(game),
          GameReview(game),
        ],
      ),
    );
  }
}
