import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/screen/add_user.dart';
import 'package:solution_challenge_champ/screen/arroser.dart';
import 'package:solution_challenge_champ/screen/botton_bar.dart';
import 'package:solution_challenge_champ/screen/edit_user.dart';
import 'package:solution_challenge_champ/screen/login.dart';
import 'package:solution_challenge_champ/screen/tank.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: ThemeData(primaryColor: Styles.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/home': (context) => const BottonBar(),
        '/addUser': (context) => const AddUserPage(),
        '/editUser': (context) => const EditUserPage(),
        '/arroser': (context) => const Arroser(),
        '/tank': (context) => const TankPage(),
        '/login': (context) => const LoginPage()
      },
    );
  }
}

class B extends StatefulWidget {
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
