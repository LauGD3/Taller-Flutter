import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(), // Aquí mantenemos const
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información personal'),
        backgroundColor: const Color.fromRGBO(0, 122, 255, 1.0)
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Aquí va la ruta de la imagen
            Image.asset('./img/cat.jpg'),

            const Icon(Icons.person, size: 50, color: Colors.blue),
            const Text(
              'Cristian David',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Nombres',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10),
            const Text(
              'Martinez Galindo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Apellidos',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10),
            const Icon(Icons.phone, size: 30, color: Colors.blue),
            const Text(
              '344444',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Celular',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10),
            const Text(
              'Distrito Capital',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Regional',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10),
            const Icon(Icons.location_city, size: 30, color: Colors.blue),
            const Text(
              'CEET',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Centro de formación',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
