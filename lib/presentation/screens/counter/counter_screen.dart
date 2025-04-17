import 'package:flutter/material.dart ';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // aca se crea un estado creando el widget
  // el estado es el que se encarga de manejar la logica del widget
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0; // variable que se encarga de contar los clicks
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            const Text('Clicks', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
          // setState es un metodo que se encarga de actualizar el estado del widget
          // cuando se llama a setState, el widget se vuelve a construir y se actualiza la UI
          // en este caso, se actualiza el contador
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
