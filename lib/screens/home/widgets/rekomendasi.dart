import 'package:flutter/material.dart';
import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/detail.dart';

class PopularGame extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  PopularGame({Key? key}) : super(key: key);

  Widget _buildHeaderWidget(Game game) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 65,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                game.type,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  _buildIconText(
                      game.score.toString(), Icons.star, Colors.amber),
                  _buildIconText('${game.download.toString()} k',
                      Icons.file_download_outlined, Colors.red),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconText(String text, IconData icon, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 15,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          Game game = listGames[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(game),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(game.bgImg),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: _buildHeaderWidget(game),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: listGames.length,
      ),
    );
  }
}
