import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class TankPage extends StatefulWidget {
  const TankPage({super.key});

  @override
  State<TankPage> createState() => _TankPageState();
}

class _TankPageState extends State<TankPage> {
  double max = 200.0;
  double niveau = 130.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          'Shamba Langu',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/profil.JPG'),
          ),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Styles.blue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'niveau d\'eau',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Styles.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
              Container(
                  height: max,
                  width: niveau,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.blue),
                        child: const Center(
                          child: Text(
                            '50%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
