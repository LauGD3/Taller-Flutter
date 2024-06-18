import 'package:flutter/material.dart';
import 'package:punto9/api/ConsultarPersona.dart';

////////////////////////////////////////////////////
void main(List<String> args) {
  runApp(Principal());
}

////////////////////////////////////////////////////
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CRUD TECKNICSTORE",
      home: HomePrincipal(),
    );
  }
}

////////////////////////////////////////////////////
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
        title: Text("CRUD TECKNICSTORE"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.10),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Personas"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarPersona().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Listado de Personas"),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black54,
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text('${resp[index].pNombre} ${resp[index].pApellido}'),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('ID: ${resp[index].idPersona}'),
                                      if (resp[index].sNombre != null) Text('Segundo Nombre: ${resp[index].sNombre}'),
                                      if (resp[index].sApellido != null) Text('Segundo Apellido: ${resp[index].sApellido}'),
                                      Text('Documento: ${resp[index].documento}'),
                                      Text('Tipo Documento: ${resp[index].tipoDocumento}'),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  }).catchError((error) {
                    print("Error fetching data: $error");
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
