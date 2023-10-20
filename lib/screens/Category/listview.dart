import 'package:flutter/material.dart';

import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/detail.dart';

class ScrollingScreen extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  ScrollingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Game Store',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 13, 0, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.dehaze,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemCount: listGames.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(listGames[index]),
                ),
              );
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(4),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      listGames[index].icon,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            listGames[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            listGames[index].type,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
