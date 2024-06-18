import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

final txtPrimerNombre = TextEditingController();
final txtSegundoNombre = TextEditingController();
final txtPrimerApellido = TextEditingController();
final txtSegundoApellido = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("SENA | CEET"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                aprendices[index]['nombre']!.split(' ').map((e) => e[0]).take(2).join(),
              ),
            ),
            title: Text(aprendices[index]['nombre']!),
            subtitle: Text("Aprendiz"),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.green,
                      title: Text(aprendices[index]['nombre']!),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        children: [
                          Text("Nombre: ${aprendices[index]['nombre']}"),
                          Divider(),
                          Text("Ocupación: ${aprendices[index]['ocupacion']}"),
                          Divider(),
                          Text("Descripción: ${aprendices[index]['descripcion']}"),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.account_circle),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  title: Text("Nuevo Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtPrimerNombre,
                        decoration: InputDecoration(
                          labelText: "Primer Nombre",
                          hintText: "Primer nombre del aprendiz",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        controller: txtSegundoNombre,
                        decoration: InputDecoration(
                          labelText: "Segundo Nombre",
                          hintText: "Segundo nombre del aprendiz",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        controller: txtPrimerApellido,
                        decoration: InputDecoration(
                          labelText: "Primer Apellido",
                          hintText: "Primer apellido del aprendiz",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        controller: txtSegundoApellido,
                        decoration: InputDecoration(
                          labelText: "Segundo Apellido",
                          hintText: "Segundo apellido del aprendiz",
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.save),
                  onPressed: () {
                    setState(() {
                      String nombre = "${txtPrimerNombre.text} ${txtSegundoNombre.text} ${txtPrimerApellido.text} ${txtSegundoApellido.text}";
                      aprendices.add({
                        'nombre': nombre,
                        'ocupacion': 'Aprendiz',
                        'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
                      });
                      txtPrimerNombre.clear();
                      txtSegundoNombre.clear();
                      txtPrimerApellido.clear();
                      txtSegundoApellido.clear();
                    });
                    Navigator.pop(context);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

List<Map<String, String>> aprendices = [
  {
    'nombre': 'DANIEL FELIPE ROMERO MORENO',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'DANIEL FELIPE NAVARRETE SANCHEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'HAROLD ESTEBAN GAONA ROJAS',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'EDUARDO ANTONIO BALZA PEÑA',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'ESTEBAN DAVID CARDENAS PEREZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'JOSUE DAVID MALDONADO GOMEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'NICOLAS ALARCON FONSECA',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'LUIS FERNANDO MORALES CAMACHO',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'CRISTIAN RAUL GRANADOS VASQUEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'LAURA JULIETH SUAREZ LOPEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'DAVID SANTIAGO LUENGAS CAÑON',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'BRAYAM SNEYDER CERQUERA RODRIGUEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'CRISTIAN DAVID MARTINEZ GALINDO',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'NICOLAS ESPITIA CHACON',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'MARIANA GALARZA GONZALEZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'LINA MARIA MONROY GAMA',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'DEIVYD SAMIR GARCIA DIAZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'CRISTIAN DANIEL ARRIETA ORTEGA',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'LORENA ANJHUL MEDINA YAZO',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'JOHAN SEBASTIAN VELASQUEZ DUQUE',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'SANTIAGO ANDRES TORRES MENESES',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'IVAN EDUARDO OLMOS RAMIREZ',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'ALEXANDER DE JESUS MARRIAGA BARRANCO',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
  {
    'nombre': 'DEICY RIVAS CORDOBA',
    'ocupacion': 'Aprendiz',
    'descripcion': 'Está al día con las entregas y competencias de aprendizaje',
  },
];
   
