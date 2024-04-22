import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  TextStyle estiloFuente30 =
      const TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter Screen'),
        elevation: 3,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('numero de clicks', style: estiloFuente30),
        Text(
          '$contador',
          style: estiloFuente30,
        )
      ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: const Text(
                '-',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                setState(() {
                  (contador > 0) ? contador-- : 0;
                });
              }),
          const SizedBox(width: 20),
          FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              }),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Text(
              '+',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              setState(() {
                contador++;
              });
            },
          )
        ],
      ),
    );
  }
}
