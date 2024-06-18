// ignore: file_names
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
Future<List<Persona>> ConsultarPersona() async {
  var url = Uri.parse("http://localhost:3000/api/Persona/Listar"); // URL API local

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return compute(pasarListarPersonas, response.body);
  } else {
    throw Exception('Hubo un error al consultar');
  }
}

List<Persona> pasarListarPersonas(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();
  return pasar.map<Persona>((json) => Persona.fromJson(json)).toList();
}

class Persona {
  final int idPersona;
  final String pNombre;
  final String? sNombre;  // Nullable
  final String pApellido;
  final String? sApellido;  // Nullable
  final String documento;
  final int? tipoDocumento;  // Nullable

  Persona({
    required this.idPersona,
    required this.pNombre,
    this.sNombre,
    required this.pApellido,
    this.sApellido,
    required this.documento,
    this.tipoDocumento,
  });

  factory Persona.fromJson(Map<String, dynamic> json) {
    print(json);  // Debug: print each JSON object to ensure fields are correct
    return Persona(
      idPersona: json['idPersona'] ?? 0,
      pNombre: json['pNombre'] ?? '',
      sNombre: json['sNombre'],
      pApellido: json['pApellido'] ?? '',
      sApellido: json['sApellido'],
      documento: json['documento'] ?? '',
      tipoDocumento: json['tipoDocumento'] != null ? json['tipoDocumento'] as int : null,
    );
  }
}
