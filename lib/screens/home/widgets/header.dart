import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ada game baru yang seru lho!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/man.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
