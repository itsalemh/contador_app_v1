import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 =
        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('contador de clicks'),
        elevation: 3,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text('numero de clicks', style: fontSize30),
            Text(
              '$contador',
              style: fontSize30,
            )
          ])),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print('hola mundo');
        },
      ),
    );
  }
}
