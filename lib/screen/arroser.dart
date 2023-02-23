import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class Arroser extends StatefulWidget {
  const Arroser({super.key});

  @override
  State<Arroser> createState() => _ArroserState();
}

class _ArroserState extends State<Arroser> {
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
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/img/image4.jpg',
                    height: 100,
                  ),
                  Image.asset(
                    'assets/img/image3.jpg',
                    height: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Poste de Mais',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 5,
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Quantite d\'eau',
                        labelStyle: TextStyle(fontSize: 25)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore:, avoid_unnecessary_containers, sized_box_for_whitespace
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 25, 80, 135))),
                      onPressed: () {},
                      child: const Text(
                        'arroser',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
