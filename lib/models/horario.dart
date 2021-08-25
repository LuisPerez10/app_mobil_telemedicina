// To parse this JSON data, do
//
//     final horario = horarioFromJson(jsonString);

import 'dart:convert';

Horario horarioFromJson(String str) => Horario.fromJson(json.decode(str));

String horarioToJson(Horario data) => json.encode(data.toJson());

class Horario {
  Horario({
    this.id,
    this.dias,
    this.horaCierre,
    this.horaInicio,
    this.tiempo,
  });

  String id;
  String dias;
  String horaCierre;
  String horaInicio;
  String tiempo;

  factory Horario.fromJson(Map<String, dynamic> json) => Horario(
        id: json["_id"],
        dias: json["dias"],
        horaCierre: json["horaCierre"],
        horaInicio: json["horaInicio"],
        tiempo: json["tiempo"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "dias": dias,
        "horaCierre": horaCierre,
        "horaInicio": horaInicio,
        "tiempo": tiempo,
      };
}
