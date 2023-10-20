import 'package:flutter/material.dart';
import 'package:uas_mobile/screens/home/widgets/game_baru.dart';
import 'package:uas_mobile/screens/home/widgets/rekomendasi.dart';
import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/detail.dart';
import 'package:uas_mobile/screens/home/widgets/Baru.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  final list = [
    {
      'icon': Icons.sports_esports_rounded,
      'color': Colors.blueAccent,
      'title': 'Action',
      'type': 'Action',
    },
    {
      'icon': Icons.sports_motorsports_rounded,
      'color': Colors.blueAccent,
      'title': 'Racing',
      'type': 'Racing',
    },
    {
      'icon': Icons.casino_rounded,
      'color': Colors.blueAccent,
      'title': 'Strategi',
      'type': 'Strategi',
    },
    {
      'icon': Icons.house_rounded,
      'color': Colors.blueAccent,
      'title': 'Simulation',
      'type': 'Simulation',
    },
    {
      'icon': Icons.piano_rounded,
      'color': Colors.blueGrey,
      'title': 'Music',
      'type': 'Music',
    },
    {
      'icon': Icons.sports_basketball_rounded,
      'color': Colors.blueGrey,
      'title': 'Sport',
      'type': 'Sport',
    },
    {
      'icon': Icons.gamepad_rounded,
      'color': Colors.blueGrey,
      'title': 'RPG',
      'type': 'RPG',
    },
    {
      'icon': Icons.more_horiz_rounded,
      'color': Colors.blueGrey,
      'title': 'More',
      'type': 'More',
    },
  ];

  List<Game> games = Game.generateGames();

  List<Game> getRacingGames() {
    return games.where((game) => game.type == 'Racing').toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 228, 238, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 235,
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 125.0,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
              ),
              itemBuilder: (_, index) => Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      String selectedType = list[index]['type'] as String;
                      List<Game> selectedGames = games
                          .where((game) => game.type == selectedType)
                          .toList();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameList(
                            games: selectedGames,
                            title: list[index]['title'] as String,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: list[index]['color'] as Color,
                      ),
                      child: Icon(
                        list[index]['icon'] as IconData,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    list[index]['title'] as String,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              itemCount: list.length,
            ),
          ),
          _buildTitle('Rekomendasi'),
          PopularGame(),
          _buildTitle('Game Baru'),
          Baru(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: BoxDecoration(color: Color.fromARGB(255, 228, 238, 255)),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _buildTitle2(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 173, 175, 176),
      ),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class GameList extends StatelessWidget {
  final List<Game> games;
  final String title;

  GameList({required this.games, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildGameItem(games[index]);
        },
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _buildGameItem(Game game) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              game.icon,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
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
                          game.type,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.8),
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
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'Detail',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
