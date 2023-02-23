import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () => Navigator.pushReplacementNamed(context, '/home'),
          child: const Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 40,
          ),
        ),
        backgroundColor: Styles.blue,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              color: Styles.blue,
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/img/profil.JPG'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Dieudonne ngwangwa',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'Others users',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // ignore: ,avoid_unnecessary_containers
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img/profil.JPG')),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        //, ignore: avoid_unnecessary_containers
                        // ignore: avoid_unnecessary_containers
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Dieudonne ngwangwa',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              // ignore: ,avoid_unnecessary_containers
                              Container(
                                //margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 45,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/editUser');
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            const Color.fromARGB(
                                                255, 25, 80, 135),
                                          ),
                                        ),
                                        child: const Text(
                                          'modiifier',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 45,
                                      child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        255, 215, 215, 215))),
                                        child: const Text(
                                          'supprimer',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img/profil.JPG')),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        //, ignore: avoid_unnecessary_containers
                        // ignore: avoid_unnecessary_containers
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Dieudonne ngwangwa',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              // ignore: ,avoid_unnecessary_containers
                              Container(
                                //margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 45,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/editUser');
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            const Color.fromARGB(
                                                255, 25, 80, 135),
                                          ),
                                        ),
                                        child: const Text(
                                          'modiifier',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 45,
                                      child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        255, 215, 215, 215))),
                                        child: const Text(
                                          'supprimer',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Styles.blue,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/addUser');
        },
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
