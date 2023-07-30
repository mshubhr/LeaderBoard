import 'package:flutter/material.dart';
import 'package:paynav/notifier.dart';
import 'package:provider/provider.dart';
import 'package:paynav/screens/leader_board.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        dynamic rankers = [
          {
            "name": "Raja Reddy",
            "gender": true,
            "prifilePic": "assets/first.png",
            "points": "8370",
            "triangles": true,
            "verified": true
          },
          {
            "name": "Natasha Red",
            "gender": false,
            "prifilePic": "assets/second.png",
            "points": "7260",
            "triangles": true,
            "verified": false
          },
          {
            "name": "Sambhivan Red",
            "gender": false,
            "prifilePic": "assets/third.png",
            "points": "6260",
            "triangles": false,
            "verified": false
          },
          {
            "name": "Shakilesh Red",
            "gender": true,
            "prifilePic": "assets/beard_man.png",
            "points": "5960",
            "triangles": false,
            "verified": true,
          },
          {
            "name": "Kaveri Red",
            "gender": false,
            "prifilePic": "assets/girl_avatar1.png",
            "points": "5420",
            "triangles": true,
            "verified": false,
          },
          {
            "name": "Brij Math",
            "gender": true,
            "prifilePic": "assets/boy_avatar1.png",
            "points": "5260",
            "triangles": true,
            "verified": false,
          },
          {
            "name": "Sikha Rawat",
            "gender": false,
            "prifilePic": "assets/cute_girl.png",
            "points": "5190",
            "triangles": false,
            "verified": true,
          },
          {
            "name": "Natasha Oberoi",
            "gender": false,
            "prifilePic": "assets/girl_avatar2.png",
            "points": "5010",
            "triangles": true,
            "verified": true,
          },
          {
            "name": "Danish Sait",
            "gender": true,
            "profile_url": "assets/images/boy_avatar1.png",
            "points": "4960",
            "triangle": true,
            "verified": false
          },
          {
            "name": "Suraj Agarwal",
            "gender": true,
            "profile_url": "assets/images/boy_avatar2.png",
            "points": "4720",
            "triangle": false,
            "verified": false
          },
        ];
        Provider.of<UsersData>(context, listen: false).data = rankers;
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const LeaderBoard())));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1E0082),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
