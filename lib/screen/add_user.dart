import 'package:flutter/material.dart';
import 'package:solution_challenge_champ/styles/styles.dart';

class AddUserPage extends StatefulWidget {
  const AddUserPage({super.key});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final _formKey = GlobalKey<FormState>();

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
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 40,
            )),
        backgroundColor: Styles.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Form(
            // ignore: sort_child_properties_last
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ignore: ,avoid_unnecessary_containers
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: const Text(
                    'Ajouter un user',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 25, 80, 135),
                        fontSize: 20),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 5),
                    label: Text('data'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter un text';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('name'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'veillez entrer some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('password'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'veillez entrer some text';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('password'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'veillez entrer some text';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore:, avoid_unnecessary_containers
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 25, 80, 135))),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('processing')));
                        }
                      },
                      child: const Text(
                        'ajouter',
                        style: TextStyle(fontSize: 20),
                      )),
                )
              ],
            ),
            key: _formKey,
          ),
        ),
      ),
    );
  }
}
