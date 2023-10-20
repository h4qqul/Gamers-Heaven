import 'package:flutter/material.dart';
import 'package:uas_mobile/models/game.dart';
import 'package:uas_mobile/screens/detail/widgets/detail.dart';

class Baru extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  Baru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270, // Mengubah tinggi untuk menampung teks di bawah gambar
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(listGames[index]),
            ),
          ),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Mengatur penempatan teks ke kiri
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(listGames[index].bgImg),
                  ),
                ),
                SizedBox(height: 10), // Spasi antara gambar dan teks
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10), // Padding khusus untuk judul game
                  child: Text(
                    listGames[index].name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5), // Spasi antara judul game dan category
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10), // Padding khusus untuk category
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category: ${listGames[index].type}', // Menampilkan category
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // Menampilkan bintang
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 3,
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
