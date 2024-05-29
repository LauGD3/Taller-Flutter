import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ciudades turísticas',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text('Listado de aprendices'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: aprendices.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(aprendices[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<String> aprendices = [
  "DANIEL FELIPE ROMERO MORENO",
  "DANIEL FELIPE NAVARRETE SANCHEZ",
  "HAROLD ESTEBAN GAONA ROJAS",
  "EDUARDO ANTONIO BALZA PEÑA",
  "ESTEBAN DAVID CARDENAS PEREZ",
  "JOSUE DAVID MALDONADO GOMEZ",
  "NICOLAS ALARCON FONSECA",
  "LUIS FERNANDO MORALES CAMACHO",
  "CRISTIAN RAUL GRANADOS VASQUEZ",
  "LAURA JULIETH SUAREZ LOPEZ",
  "DAVID SANTIAGO LUENGAS CAÑON",
  "BRAYAM SNEYDER CERQUERA RODRIGUEZ",
  "CRISTIAN DAVID MARTINEZ GALINDO",
  "NICOLAS ESPITIA CHACON",
  "MARIANA GALARZA GONZALEZ",
  "LINA MARIA MONROY GAMA",
  "DEIVYD SAMIR GARCIA DIAZ",
  "CRISTIAN DANIEL ARRIETA ORTEGA",
  "LORENA ANJHUL MEDINA YAZO",
  "JOHAN SEBASTIAN VELASQUEZ DUQUE",
  "SANTIAGO ANDRES TORRES MENESES",
  "IVAN EDUARDO OLMOS RAMIREZ",
  "ALEXANDER DE JESUS MARRIAGA BARRANCO",
  "DEICY RIVAS CORDOBA",
];
