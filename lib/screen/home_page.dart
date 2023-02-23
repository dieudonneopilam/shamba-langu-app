import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/img/image3.jpg',
                    height: 50,
                  ),
                  Image.asset(
                    'assets/img/image2.png',
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/img/image4.jpg',
                          height: 100,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/arroser');
                          },
                          child: Text(
                            'arroser',
                            style: TextStyle(fontSize: 20, color: Styles.blue),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/img/tank.jpg',
                          height: 100,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/tank');
                            },
                            child: Text(
                              'Tank',
                              style:
                                  TextStyle(fontSize: 20, color: Styles.blue),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
