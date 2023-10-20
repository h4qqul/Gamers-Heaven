import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:uas_mobile/constants/colors.dart';
import 'package:uas_mobile/models/game.dart';

class GameDesc extends StatelessWidget {
  final Game game;
  const GameDesc(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: ReadMoreText(
        game.desc,
        trimLines: 2,
        colorClickableText: kPrimary,
        trimMode: TrimMode.Line,
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          height: 1.5,
        ),
        trimCollapsedText: 'more',
        trimExpandedText: 'less',
      ),
    );
  }
}
