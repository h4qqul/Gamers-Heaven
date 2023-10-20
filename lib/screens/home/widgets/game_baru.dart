import 'package:flutter/material.dart';
import 'package:uas_mobile/constants/colors.dart';
import 'package:uas_mobile/models/game.dart';

class GameBaru extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  GameBaru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: Color.fromARGB(255, 152, 157, 160)),
      child: Column(
        children: listGames
            .map((e) => Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          e.icon,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.type,
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    _buildStar(),
                                  ],
                                ),
                                _buildButton(),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: color
          .map((e) => Icon(
                Icons.star,
                size: 20,
                color: e,
              ))
          .toList(),
    );
  }

  Widget _buildButton() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          color: kPrimary, borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'Install',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
