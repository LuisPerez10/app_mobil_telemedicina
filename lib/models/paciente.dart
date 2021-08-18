import 'dart:convert';

import 'package:goldenhands/global/environment.dart';

Paciente pacienteFromJson(String str) => Paciente.fromJson(json.decode(str));

String pacienteToJson(Paciente data) => json.encode(data.toJson());

final base_url = Environment.apiUrl;

class Paciente {
  Paciente({
    this.seguroMedico,
    this.grupoSanguineo,
    this.factorSanguineo,
    this.peso,
    this.vacunas,
    this.enfermedades,
    this.alergias,
    this.persona,

    // this.password,
  });

  String seguroMedico;
  String grupoSanguineo;
  String factorSanguineo;
  String peso;
  List<String> vacunas;
  List<String> enfermedades;
  List<String> alergias;
  String persona;

  // String password;

  factory Paciente.fromJson(Map<String, dynamic> json) => Paciente(
        seguroMedico: json["seguroMedico"],
        grupoSanguineo: json["grupoSanguineo"],
        factorSanguineo: json["factorSanguineo"],
        peso: json["peso"],
        vacunas: json["vacunas"],
        enfermedades: json["enfermedades"],
        alergias: json["alergias"],
        persona: json["persona"],
        // // password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "seguroMedico": seguroMedico,
        "grupoSanguineo": grupoSanguineo,
        "factorSanguineo": factorSanguineo,
        "peso": peso,
        "vacunas": vacunas,
        "enfermedades": enfermedades,
        "alergias": alergias,
        "persona": persona
        // // "password": password,
      };
}
