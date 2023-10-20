import 'package:flutter/material.dart';
import 'package:uas_mobile/constants/colors.dart';
import 'package:uas_mobile/models/game.dart';

class GameReview extends StatelessWidget {
  final Game game;
  const GameReview(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration:
          BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Posisi diubah menjadi spaceBetween
            children: [
              Text(
                'Ratings and Review',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'view',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.score.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStar(),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${game.review.toString()} review',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ), // Tambahkan jarak
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Posisi diubah menjadi spaceBetween
            children: [
              Text(
                "Price ", // Teks "Price" ditambahkan di sini
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                '\$${game.price.toString()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: kPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text(
                  'Install',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> colors = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: colors
          .map(
            (e) => Icon(
              Icons.star,
              size: 25,
              color: e,
            ),
          )
          .toList(),
    );
  }
}
