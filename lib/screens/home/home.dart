import 'package:flutter/material.dart';
import 'package:uas_mobile/screens/home/widgets/category.dart';
import 'package:uas_mobile/screens/home/widgets/header.dart';
import 'package:uas_mobile/screens/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(0),
              origin: Offset(150, 50),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(150, 50),
              ),
            ),
            Column(
              children: [const Header(), Search(), Category()],
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: Color.fromARGB(255, 228, 238, 255),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.blueAccent,
              selectedItemColor: Color.fromARGB(255, 0, 0, 0),
              selectedFontSize: 12,
              unselectedFontSize: 12,
              unselectedItemColor:
                  const Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Icon(
                    Icons.home_rounded,
                    size: 50,
                  ),
                ),
                _buildItem('Application', Icons.more_horiz_outlined),
                _buildItem('Film', Icons.play_arrow_outlined),
                _buildItem('Book', Icons.auto_stories_rounded),
              ]),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(String text, IconData icon) {
    return BottomNavigationBarItem(
        label: text,
        icon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 30,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ));
  }
}
